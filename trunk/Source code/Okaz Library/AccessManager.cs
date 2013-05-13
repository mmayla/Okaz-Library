using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Okaz_Library
{
    public class AccessManager
    {
        SqlConnection Database_connection = new SqlConnection();
        string connstr = "integrated security=SSPI;" + "data source='.';" + "initial catalog='OkazLibrary'"; //required change
        SqlDataAdapter genadap = new SqlDataAdapter();
        DataSet gends = new DataSet();
        SqlCommand gencommand = new SqlCommand();

        public AccessManager()
        {
            Database_connection.ConnectionString = connstr;
            connecttoDatabase();
        }

        ~AccessManager()
        {
            Database_connection.Close();
        }

        private void connecttoDatabase()
        {
            try
            {
                Database_connection.Open();
            }
            catch (System.Data.SqlClient.SqlException) { }

            catch (System.InvalidOperationException) { }

            catch (System.Configuration.ConfigurationErrorsException) { }
        }

        public void Query(string command)
        {
            connecttoDatabase();
            gencommand.CommandType = CommandType.Text;
            gencommand.CommandText = command;
            gencommand.Connection = Database_connection;
            gencommand.ExecuteNonQuery();
        }

        public int getAdminID(string email)
        {
            gencommand.CommandType = CommandType.Text;
            gencommand.Connection = Database_connection;
            gencommand.CommandText = "select M_ID from OkazLibrary.dbo.manager where Email='"+email+"'";
            SqlDataReader reader = gencommand.ExecuteReader();

            int id = -1;
            if (reader.Read())
            {
                id = reader.GetInt32(0);
            }
            reader.Close();
            return id;
        }

        public string getAdminPass(int ID)
        {
            gencommand.CommandType = CommandType.Text;
            gencommand.Connection = Database_connection;
            gencommand.CommandText = "select [Phone Number] from OkazLibrary.dbo.manager where M_ID="+ID.ToString()+"";
            SqlDataReader reader = gencommand.ExecuteReader();

            string password = "";
            if (reader.Read())
            {
                password = reader.GetSqlString(0).ToString();
            }
            reader.Close();
            return password;

        }

        public string getAdminPosition(int ID) //if Admin or Manager
        {
            gencommand.CommandType = CommandType.Text;
            gencommand.Connection = Database_connection;
            gencommand.CommandText = "select admin from OkazLibrary.dbo.manager where M_ID="+ID.ToString()+"";
            SqlDataReader reader = gencommand.ExecuteReader();

            string position = "";
            if (reader.Read())
            {
               // position = reader.GetSqlString(0).ToString();
                position = reader.GetSqlInt32(0).ToString();

                if (position == "1")
                    position = "Admin";
                else if (position == "0")
                    position = "Manager";
            }
            reader.Close();
            return position;
        }

        public string getAdminName(int ID) //if Admin or Manager
        {
            gencommand.CommandType = CommandType.Text;
            gencommand.Connection = Database_connection;
            gencommand.CommandText = "select Name from OkazLibrary.dbo.manager where M_ID="+ID.ToString()+"";
            SqlDataReader reader = gencommand.ExecuteReader();

            string name = "";
            if (reader.Read())
            {
                // position = reader.GetSqlString(0).ToString();
                name = reader.GetString(0);

                if (name == "1")
                    name = "Admin";
                else if (name == "0")
                    name = "Manager";
            }
            reader.Close();
            return name;
        }

        public void setDataGrid(GridView GV, string scomm)
        {
            gencommand.CommandType = CommandType.Text;
            gencommand.Connection = Database_connection;
            gencommand.CommandText = scomm;

            SqlDataReader reader = gencommand.ExecuteReader();

            GV.DataSource = reader;
            GV.DataBind();
            reader.Close();
        }

        public void setDropDownList(DropDownList DL, string show, string retrive, string scomm)
        {
            gencommand.CommandType = CommandType.Text;
            gencommand.Connection = Database_connection;
            gencommand.CommandText = scomm;

            SqlDataReader reader = gencommand.ExecuteReader();

            DL.DataTextField = show;
            DL.DataValueField = retrive;
            DL.DataSource = reader;

            DL.DataBind();
            reader.Close();
        }

       


    }
}