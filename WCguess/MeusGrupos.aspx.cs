using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using Facebook;
using BLL;
using System.Web.UI.HtmlControls;

namespace WCguess
{
    public partial class MeusGrupos : System.Web.UI.Page
    {
        String ID_Usuario = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
             if (Session["Usuario"] == null)
                Response.Redirect("Login.aspx");
            else
                ID_Usuario = Session["Usuario"].ToString();

            lblMyLink.Text = "http://www.wcguess.com/Login.aspx?Indicacao=" + ID_Usuario;

            if (!IsPostBack)
                AddTwitterIcon("Eu estou participando do WC GUESS, vem também! " + lblMyLink.Text);
        }
        private void AddTwitterIcon(String text)
        {

            HtmlGenericControl ATwitter = new HtmlGenericControl("a");
            Image img = new Image();
            img.ImageUrl = "/Styles/images/twitter.png";
            ATwitter.Attributes.Add("href", String.Format("http://twitter.com/home/?status={0}", text));
            ATwitter.Attributes.Add("target", "target='_blank'");
            ATwitter.Controls.Add(img);
            TdTwitter.Controls.Add(ATwitter);

        }
        [WebMethod]
        public static List<REP_RANKING> RegisterUser(string token)
        {
            RankBLO RankBLO = new BLL.RankBLO();
            List<String> Ids_Instalados = new List<string>();
            var client = new FacebookClient(token);
            var result = (IDictionary<string, object>)client.Get("/me/friends?fields=id,installed");
            var myResult = (IDictionary<string, object>)client.Get("/me");
             string myID = (string)myResult["id"];
            JsonObject obj = (JsonObject)result;
            JsonArray array = (JsonArray)obj["data"];

            for (int i = 0; i < array.Count; i++)
            {
                JsonObject Item = (JsonObject)array[i];
                object installed;
                if (Item.TryGetValue("installed", out installed))
                {
                    String id = (string)Item["id"];
                    Ids_Instalados.Add(id);
                }
                
            }
            Ids_Instalados.Add(myID);
            return RankBLO.GetRankByIdFacebook(Ids_Instalados);
        }
    }
}