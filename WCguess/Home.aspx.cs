using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace WCguess
{
    public partial class Home : System.Web.UI.Page
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
            ATwitter.Attributes.Add("style", "float:right; margin-right:10px;");
            ATwitter.Controls.Add(img);
            PShare.Controls.Add(ATwitter);

        }
    }
}