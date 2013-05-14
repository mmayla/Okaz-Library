using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Okaz_Library.Admin
{
    public partial class login : System.Web.UI.Page
    {
        AccessManager DatabaseManager = new AccessManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pass;
            int ID;
            try
            {
                Label4.Text = "";

                ID = DatabaseManager.getAdminID(TextBox1.Text);
                if (ID != -1)
                {
                    pass = DatabaseManager.getAdminPass(ID); 
                    if (pass.Equals(TextBox2.Text))
                    {
                        string status = DatabaseManager.getAdminPosition(ID);
                        string name = DatabaseManager.getAdminName(ID);
                            Session.Add("ID", ID);
                            Session.Add("Status", status);
                            Session.Add("Name", name);
                            Session.Add("AccessManager", DatabaseManager);

                        Response.Redirect("Manage.aspx");
                    }
                }

               Label4.Text = "الرجاء التحقق من البريد الالكتروني والرقم السري";
            }

            catch(NullReferenceException)
            {
                Label4.Text = "الرجاء التحقق من البريد الالكتروني والرقم السري";
            }
        }

        
    }
}