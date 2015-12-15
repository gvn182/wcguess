using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAO;

namespace WCguess
{
    public partial class Query : System.Web.UI.Page
    {
        DataBase DB = new DataBase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = DB.SetNonQuery(TextBox1.Text);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            GdrResultado.DataSource = DB.SetQuery(TextBox1.Text);
            GdrResultado.DataBind();
        }
    }
}