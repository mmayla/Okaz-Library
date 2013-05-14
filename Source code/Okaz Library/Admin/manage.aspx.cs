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
        AccessManager ServerManager;
        int RequestID , BookID, UserID;
        string status , name;
        protected void Page_Load(object sender, EventArgs e)
        {
             try
             {
                 Label1.Text = "اهلا "+Session["Name"].ToString();
                 ServerManager = (AccessManager)Session["AccessManager"];
             }

             catch (NullReferenceException)
             {
                 Response.Redirect("Login.aspx");
             }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                RequestID = int.Parse(TextBox1.Text);
                status = ServerManager.getUniqueData("select [status] from OkazLibrary.dbo.request where R_ID=" + RequestID.ToString() + "");
                BookID = int.Parse(ServerManager.getUniqueData("select book_ID from OkazLibrary.dbo.request where R_ID=" + RequestID.ToString() + ""));
                UserID = int.Parse(ServerManager.getUniqueData("select U_ID from OkazLibrary.dbo.request where R_ID=" + RequestID.ToString() + ""));
                name = ServerManager.getUniqueData("select Name from OkazLibrary.dbo.request where R_ID=" + RequestID.ToString() + "");

                if (status == "borrow")
                {
                    ServerManager.Query("UPDATE OkazLibrary.dbo.book SET Available = 0 WHERE book_ID = " + BookID + "");        
                }
                else if (status == "loan")
                {
                    ServerManager.Query("UPDATE OkazLibrary.dbo.book SET Available = 1 WHERE book_ID = " + BookID + "");           
                }

                ServerManager.Query("insert into OkazLibrary.dbo.User_book values(" + BookID.ToString() + "," + UserID.ToString() + ",'" + status + "',GETDATE(),'" + name + "')");
                ServerManager.Query("DELETE FROM OkazLibrary.dbo.request WHERE R_ID = " + RequestID + "");

                Label2.Text = "تمت العملية بنجاح";

            }

            catch (Exception)
            {
                Label2.Text = "الرجاء التحقق من رقم الطلب";
            }

            TextBox1.Text = "";
        }

        void resetall()
        {
            TextBox1.Text = "";
            Label2.Text = "";
        }


    }
}