using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WCguess
{
    public partial class Testes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Serv.HelloGustaSoapClient asd = new Serv.HelloGustaSoapClient();


            string test = ("0,Brasil,1,Croacia,0,0;1,Brasil,1,Croacia,0,0");
            asd.SetGuess(test, "21");
        }
    }
}