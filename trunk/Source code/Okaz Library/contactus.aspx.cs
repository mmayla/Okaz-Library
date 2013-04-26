using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Okaz_Library
{
    public partial class contactus : System.Web.UI.Page
    {
        AccessManager ServerManager = new AccessManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (textvalidation())
                ServerManager.Query("Insert into [OkazLibrary].[dbo].[Message] values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "');");
            }

            catch (SqlException)
            {
                Label1.Text = "*الرجاء التأكد من ادخال جميع البيانات";
            }

            if (textvalidation())
            {
                Label1.Text = "*تم ارسال الرسالة بنجاح";
                cleartexts();
            }
            else
                Label1.Text = "*الرجاء التأكد من ادخال جميع البيانات";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            cleartexts();
        }

        private void cleartexts()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }

        private bool textvalidation()
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "")
                return false;

            return true;
        }
    }
}