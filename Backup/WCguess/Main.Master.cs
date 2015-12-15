using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLO;
using BLL;

namespace WCguess
{
    public partial class Main : System.Web.UI.MasterPage
    {
        UsuarioBLO User = new UsuarioBLO();
        String ID_Usuario = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
               if (Session["Usuario"] == null)
                Response.Redirect("Login.aspx");
            else
                ID_Usuario = Session["Usuario"].ToString();

               if (!IsPostBack)
               {
                   REP_USUARIO The_User = User.GetUsuarioBy(ID_Usuario);
                   imgPerfil.ImageUrl = The_User.facebook_id != String.Empty ? String.Format("https://graph.facebook.com/{0}/picture?type=normal", The_User.facebook_id) : "/Styles/images/Default.jpg";
               }
        }
    }
}