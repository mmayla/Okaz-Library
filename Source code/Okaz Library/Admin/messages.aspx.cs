using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Okaz_Library.Admin
{
    public partial class messages : System.Web.UI.Page
    {
        AccessManager ServerManager;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Label1.Text = "اهلا " + Session["Name"].ToString();
                ServerManager = (AccessManager)Session["AccessManager"];

               // ServerManager.setDataGrid(GridView1, "SELECT [Name] as الاسم,[Email] as الايميل ,[Phone] as  [رقم الهاتف],[Message] as الرسالة FROM [Message]"); 
            }

            catch (NullReferenceException)
            {
                Response.Redirect("Login.aspx");
            }


        }
    }
}