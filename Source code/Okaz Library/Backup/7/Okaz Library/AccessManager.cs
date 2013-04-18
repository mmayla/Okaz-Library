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
        string connstr = "integrated security=SSPI;" + "data source='.';" + "initial catalog='OkazLibrary'"; //requred change
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
            gencommand.CommandType = CommandType.Text;
            gencommand.CommandText = command;
            gencommand.Connection = Database_connection;
            gencommand.ExecuteNonQuery();
        }

        public int getUserID(string email)
        {
            gencommand.CommandType = CommandType.Text;
            gencommand.Connection = Database_connection;
            gencommand.CommandText = "select ID from CMPdatabase.dbo.[User] where Email= '" + email + "'";
            SqlDataReader reader = gencommand.ExecuteReader();

            int id = -1;
            if (reader.Read())
            {
                id = reader.GetInt32(0);
            }
            reader.Close();
            return id;
        }

        public string getUserPass(int ID)
        {
            gencommand.CommandType = CommandType.Text;
            gencommand.Connection = Database_connection;
            gencommand.CommandText = "select [Password] from CMPdatabase.dbo.[User] where ID= " + ID.ToString() + "";
            SqlDataReader reader = gencommand.ExecuteReader();

            string password = "";
            if (reader.Read())
            {
                password = reader.GetSqlString(0).ToString();
            }
            reader.Close();
            return password;

        }

        public string getUserPosition(int ID)
        {
            gencommand.CommandType = CommandType.Text;
            gencommand.Connection = Database_connection;
            gencommand.CommandText = "select Position from CMPdatabase.dbo.[User] where ID= " + ID.ToString() + "";
            SqlDataReader reader = gencommand.ExecuteReader();

            string position = "";
            if (reader.Read())
            {
                position = reader.GetSqlString(0).ToString();
            }
            reader.Close();
            return position;
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