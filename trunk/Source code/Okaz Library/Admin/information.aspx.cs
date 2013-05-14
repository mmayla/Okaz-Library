using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Okaz_Library.Admin
{
    public partial class information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Label1.Text = "اهلا " + Session["Name"].ToString();
                droplistValidation();
            }

            catch (NullReferenceException)
            {
                Response.Redirect("Login.aspx");
            }
        }

        void droplistValidation()
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
            }
            else if (DropDownList1.SelectedIndex == 1)
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                Panel3.Visible = false;
            }
            else
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = true;
            }
        }
    }
}