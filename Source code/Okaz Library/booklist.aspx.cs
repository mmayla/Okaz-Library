using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Okaz_Library
{
    public partial class booklist : System.Web.UI.Page
    {
        AccessManager ServerManager = new AccessManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //update book
            ServerManager.Query("UPDATE book SET Available = 0 WHERE book_ID = "+DropDownList2.SelectedValue+"");

            //add request
            ServerManager.Query("insert into [users] values('"+TextBox2.Text+"','"+TextBox3.Text+"')");
            int UID = int.Parse(ServerManager.getUniqueData("select U_ID from [users] where [Phone Number]='"+TextBox2.Text+"' AND Email = '"+TextBox3.Text+"'"));
            ServerManager.Query("insert into [request] values("+DropDownList2.SelectedValue+","+UID.ToString()+",'borrow',GETDATE(),'"+TextBox1.Text+"')");

            ListView1.DataBind();
            DropDownList2.DataBind();
        }
    }
}