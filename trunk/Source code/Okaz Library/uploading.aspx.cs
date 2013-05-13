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
    public partial class uploading : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AccessManager upload = new AccessManager();
            //AccessManager up = new AccessManager();

            try
            {
                if (textvalidation())
                {
                    upload.Query("Insert into OkazLibrary0.dbo.[users] values ('" + TextBox2.Text + "','" + TextBox3.Text + "');");
                    upload.Query("Insert into OkazLibrary0.dbo.[book] values('" + TextBox4.Text + "','" + null + "'," + 0 + "'," + DropDownList1.SelectedValue + "'," + 1 + "'," + TextBox6.Text + "');");
                   // upload.Query("Insert into OkazLibrary0.dbo.[urls] values ('" + TextBox5.Text + "','" + "Image" + "');");
                }
            }
            catch (SqlException)
            {
                Label1.Text = "*الرجاء التأكد من ادخال جميع البيانات";
            }

            if (textvalidation())
            {
                Label1.Text = "*تم الأرسال بنجاح";
                cleartexts();

            }
            else
                Label1.Text = "*الرجاء التأكد من ادخال جميع البيانات";
        }



        private bool textvalidation()
        {
            if (TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || DropDownList1.SelectedValue == "" || TextBox6.Text == "")
                return false;

            return true;
        }

        private void cleartexts()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

    }
}
