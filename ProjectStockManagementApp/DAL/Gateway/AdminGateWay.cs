using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace ProjectStockManagementApp.DAL.Gateway
{
    public class AdminGateWay
    {
         private SqlConnection connection;
        private SqlCommand command;
        private SqlDataReader reader;
        public AdminGateWay()
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["Category_Input"].ConnectionString;
            connection = new SqlConnection(connectionString);
        }
        public bool CheckName(string name)
        {
            string query = "SELECT * FROM Admin WHERE Name=@name";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@Name", name);
            connection.Open();
            reader = command.ExecuteReader();
            bool isExists = reader.HasRows;
            connection.Close();
            return isExists;
        }
    }
}