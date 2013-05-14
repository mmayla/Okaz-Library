using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Okaz_Library.Admin
{
    public partial class adminslist : System.Web.UI.Page
    {
        AccessManager ServerManager;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Label1.Text = "اهلا " + Session["Name"].ToString();

                //admins panels
                string status = Session["Status"].ToString();
                if (status.Equals("admin"))
                {
                    Panel2.Visible = true;
                    panelVisibility();
                }
                else Panel2.Visible = false;

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
                ServerManager = (AccessManager)Session["AccessManager"];
                if (DropDownList1.SelectedValue == "add")
                {
                    ServerManager.Query("insert into manager values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList2.SelectedValue + "')");
                }
                else if (DropDownList1.SelectedValue == "edit")
                {
                    ServerManager.Query("UPDATE manager SET Name='" + TextBox1.Text + "', Email='" + TextBox2.Text + "' , [Phone Number]='" + TextBox3.Text + "' , [admin]='" + DropDownList2.SelectedValue + "' WHERE M_ID='" + DropDownList3.SelectedValue + "'");
                }
                else if (DropDownList1.SelectedValue == "delete")
                {
                    ServerManager.Query("DELETE FROM manager WHERE M_ID='" + DropDownList3.SelectedValue + "'");
                }

                DropDownList3.DataBind();
                ListView1.DataBind();

                Label1.Text = "تمت العملية بنجاح";
            }

            catch (Exception)
            {
                Label1.Text = "الرجاء التحقق من البيانات";
            }
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            panelVisibility();
        }

        void panelVisibility()
        {
            if (DropDownList1.SelectedValue == "add")
            {
                Panel3.Visible = true;
                Panel4.Visible = false;
            }
            else if (DropDownList1.SelectedValue == "edit")
            {
                Panel3.Visible = true;
                Panel4.Visible = true;
            }
            else if (DropDownList1.SelectedValue == "delete")
            {
                Panel3.Visible = false;
                Panel4.Visible = true;
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        void dropboxchanged()
        {
            if (DropDownList1.SelectedValue == "edit")
            {
                TextBox1.Text = ServerManager.getUniqueData("select Name from [manager] where M_ID = " + DropDownList3.SelectedValue + "");
                TextBox2.Text = ServerManager.getUniqueData("select Email from [manager] where M_ID = " + DropDownList3.SelectedValue + "");
                TextBox3.Text = ServerManager.getUniqueData("select Name from [Phone Number] where M_ID = " + DropDownList3.SelectedValue + "");
                string status = ServerManager.getUniqueData("select [admin] from [Phone Number] where M_ID = " + DropDownList3.SelectedValue + "");
                DropDownList2.SelectedIndex = (status == "admin") ? 0 : 1;
            }
        }
    }
}