using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Okaz_Library.Admin
{
    public partial class Manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Label1.Text = "اهلا "+Session["Name"].ToString();

            }

            catch (NullReferenceException)
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}