using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Facebook;
using System.Web.Services;
using BLO;
using BLL;

namespace WCguess
{

    public partial class Login : System.Web.UI.Page
    {
        UsuarioBLO UserBLO = new UsuarioBLO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Cadastro"] != null)
                    ClientScript.RegisterStartupScript(this.GetType(), "OpenModal", "RegisterModal(); $('#modalEditar').dialog('open');", true);
            }

        }
        [WebMethod]
        public static string RegisterUser(string token, string ID_Indicacao)
        {
            object Ignore;
            var client = new FacebookClient(token);
            var result = (IDictionary<string, object>)client.Get("/me");
            string name = (string)result["name"];
            string lastname = (string)result["last_name"];
            string id = (string)result["id"];
            string email = result.TryGetValue("email", out Ignore) ? (string)result["email"] :id;
            string gender = (string)result["gender"];
            string birthday = (string)result["birthday"];
            string country = result.TryGetValue("locale", out Ignore) ? (string)result["locale"] : String.Empty;
            JsonObject JSonLocation = result.TryGetValue("location", out Ignore) ? (JsonObject)result["location"] : null;
            string location = JSonLocation != null && JSonLocation.TryGetValue("name", out Ignore) ? JSonLocation["name"].ToString() : String.Empty;
            string Nascimento = birthday != String.Empty ? DateTime.ParseExact(birthday, "MM/dd/yyyy", null).ToString("dd/MM/yyyy") : String.Empty;
            string Sexo = gender != String.Empty ? gender == "male" ? "M" : "F" : String.Empty;
            UsuarioBLO UserBLO = new UsuarioBLO();

            if (ID_Indicacao != "")
            {
                int ID_Usuario = UserBLO.GetUserID(id);
                if (ID_Usuario == -1)
                {
                    BonusBLO Bonus = new BonusBLO();
                    Bonus.AdicionaBonus(ID_Indicacao, id);

                }
            }

            int ID_Retorno = UserBLO.CadastraUsuario(name, lastname, Sexo, Nascimento, location + " " + country, email, id, id, 0);
            HttpContext.Current.Session["Usuario"] = ID_Retorno;
            return "sucesso";

        }
        protected void btnSalvarCadastro_Click(object sender, EventArgs e)
        {
            string name = txtNome.Text;
            string lastname = txtSobreNome.Text;
            string email = txtEmailCadastro.Text;
            string gender = ddSexo.Text;
            string birthday = txtNascimento.Text;
            string country = ddPais.Text;
            if (txtConfirmaSenha.Text.Equals(txtSenhaCadastro.Text))
            {
                int ID_Usuario = UserBLO.CadastraUsuario(name, lastname, gender, birthday, country, email, txtConfirmaSenha.Text, string.Empty, 0);
                Session["Usuario"] = ID_Usuario;
                Response.Redirect("Home.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "AlertSenhaNaoConfere", "alert('As senhas digitadas não conferem');", true);
                ClientScript.RegisterStartupScript(this.GetType(), "OpenModal", "RegisterModal(); $('#modalEditar').dialog('open');", true);
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int The_ID = UserBLO.GetUserID(txtEmail.Text, txtSenha.Text);
            if (The_ID < 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "AlertSenhaInvalida", "alert('Senha invalida');", true);
            }
            else
            {
                HttpContext.Current.Session["Usuario"] = The_ID;
                Response.Redirect("Home.aspx");
            }
        }
    }
}