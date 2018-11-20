using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using ProjectStockManagementApp.DAL.Model;

namespace ProjectStockManagementApp.DAL.Gateway
{
    public class ItemGateway
    {
        private SqlConnection connection;
        private SqlCommand command;
        private SqlDataReader reader;

        public ItemGateway()
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["Input"].ConnectionString;
            connection = new SqlConnection(connectionString);
        }

        public int Save(Item input)
        {
            string query =
                "INSERT INTO Item(Name,CompanyId,CategoryId,ReorderLevel) VALUES(@name,@companyid,@categoryid,@reorderlevel)";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@name", input.Name);
            command.Parameters.AddWithValue("@companyid",input.CompanyId);
            command.Parameters.AddWithValue("@categoryid",input.CategoryId);
            command.Parameters.AddWithValue("@reorderlevel",@input.ReorderLevel);
            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;
        }


        public bool IsExists(string name)
        {
            string query = "SELECT * FROM Item WHERE Name=@name";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@Name", name);
            connection.Open();
            reader = command.ExecuteReader();
            bool isExists = reader.HasRows;
            connection.Close();
            return isExists;
        }

        public bool IsEmpty(string name)
        {
            bool isEmpty = string.IsNullOrEmpty(name);
            return isEmpty;
        }


        public List<Item> GetAllItems()
        {
            string query = "SELECT * FROM Item";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            List<Item> itemList = new List<Item>();

            while (reader.Read())
            {
                Item input = new Item();
                input.Id = Convert.ToInt32(reader["Id"]);
                input.Name = reader["Name"].ToString();
                itemList.Add(input);
            }
            reader.Close();
            connection.Close();
            return itemList;
        }


    }
}