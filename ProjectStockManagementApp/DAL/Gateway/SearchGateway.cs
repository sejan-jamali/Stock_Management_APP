using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using ProjectStockManagementApp.DAL.Model;

namespace ProjectStockManagementApp.DAL.Gateway
{
    public class SearchGateway
    {
        private SqlConnection connection;
        private SqlCommand command;
        private SqlDataReader reader;

        public SearchGateway()
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["Input"].ConnectionString;
            connection = new SqlConnection(connectionString);
            //command = new SqlCommand();
        }

        //public Item GetItemById(int id)
        //{
        //    string query = "SELECT Name FROM Item WHERE CompanyId=@id AND CategoryId=@id";
        //    command = new SqlCommand(query, connection);
        //    command.Parameters.AddWithValue("@id", id);
        //    connection.Open();
        //    reader = command.ExecuteReader();
        //    reader.Read();
        //    Item input = new Item();

        //    if(reader.HasRows)
        //    {
        //        //CategoryInput input = new CategoryInput();
        //        //input.Id = Convert.ToInt32(reader["Id"]);
        //        input.Name = reader["Name"].ToString();
        //        //input.CategoryId = Convert.ToInt32(reader["CategoryID"]);
        //        //input.CompanyId = Convert.ToInt32(reader["ComapnyId"]);

        //    }
        //    reader.Close();
        //    connection.Close();
        //    return input;
        //}

        //public Item GetCompanyById(int id)
        //{
        //    string query = "SELECT Company.Name FROM Company INNER JOIN Item ON Company.Id=@id AND Item.CompanyId=@id";
        //    command = new SqlCommand(query, connection);
        //    command.Parameters.AddWithValue("@id", id);
        //    connection.Open();
        //    reader = command.ExecuteReader();
        //    reader.Read();
        //    CompanySetup input = new CompanySetup();

        //    if (reader.HasRows)
        //    {
        //        //CategoryInput input = new CategoryInput();
        //        input.ID = Convert.ToInt32(reader["ID"]);
        //        input.Name = reader["Name"].ToString();

        //    }
        //    reader.Close();
        //    connection.Close();
        //    return input;
        //}
    }
}