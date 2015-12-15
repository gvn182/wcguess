using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Facebook;
using System.Web.Services;
using BLO;

namespace WCguess
{

    public partial class Login : System.Web.UI.Page
    {
        UsuarioBLO UserBLO = new UsuarioBLO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string RegisterUser(string token)
        {

            var client = new FacebookClient(token);
            var result = (IDictionary<string, object>)client.Get("/me");
            string name = (string)result["name"];
            string lastname = (string)result["last_name"];
            string id = (string)result["id"];
            string email = (string)result["email"];
            string gender = (string)result["gender"];
            string birthday = (string)result["birthday"];
            string country = (string)result["locale"];
            JsonObject JSonLocation = (JsonObject)result["location"];
            string location = JSonLocation["name"].ToString();
            string Nascimento = DateTime.ParseExact(birthday, "MM/dd/yyyy", null).ToString("dd/MM/yyyy");
            string Sexo = gender == "male" ? "M" : "F";
            UsuarioBLO UserBLO = new UsuarioBLO();
            int ID_Retorno = UserBLO.CadastraUsuario(name, lastname, Sexo, Nascimento, location + " " + country, email, id, id, 0);
            HttpContext.Current.Session["Usuario"] = ID_Retorno;
            return "sucesso";

        }
        protected void btnCadastro_Click(object sender, EventArgs e)
        {
            string name = txtNome.Text;
            string lastname = txtSobreNome.Text;
            string email = txtEmail.Text;
            string gender = ddSexo.Text;
            string birthday = txtNascimento.Text;
            string country = ddPais.Text;
            if (txtConfirmaSenha.Text.Equals(Session["Senha"].ToString()))
            {
                int ID_Usuario = UserBLO.CadastraUsuario(name, lastname, gender, birthday, country, email, txtConfirmaSenha.Text, string.Empty, 0);
                Session["Usuario"] = ID_Usuario;
                Response.Redirect("Guess.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "OpenModal", "RegisterModal(); $('#modalEditar').dialog('open');", true);
                ClientScript.RegisterStartupScript(this.GetType(), "AlertSenhaNaoConfere", "alert('As senhas digitadas não conferem');", true);
            }

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int The_ID = UserBLO.GetUserID(txtEmail.Text, txtSenha.Text);
            if (The_ID == -1)
            {
                txtEmailCadastro.Text = txtEmail.Text;
                Session["Senha"] = txtSenha.Text;
                ClientScript.RegisterStartupScript(this.GetType(), "OpenModal", "RegisterModal(); $('#modalEditar').dialog('open');", true);
            }
            else if (The_ID == -2)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "AlertSenhaInvalida", "alert('Senha invalida');", true);
            }
            else
            {
                HttpContext.Current.Session["Usuario"] = The_ID;
                Response.Redirect("Guess.aspx");
            }
        }
    }
}