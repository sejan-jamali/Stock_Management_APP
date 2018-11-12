using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using ProjectStockManagementApp.DAL.Model;

namespace ProjectStockManagementApp.DAL.Gateway
{
    public class CompanySetupGateway
    {
        private SqlConnection connection;
        private SqlCommand command;
        private SqlDataReader reader;

        public CompanySetupGateway()
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["Category_Input"].ConnectionString; 
            connection = new SqlConnection(connectionString);

        }

        public int Save(CompanySetup aCompanySetup)
        {
            string query = "INSERT INTO CompanySetup(Name)" +
                           " VALUES(@companySetup)";
            command = new SqlCommand(query,connection);
            command.Parameters.AddWithValue("@companySetup", aCompanySetup.CompanyName);

            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;
        }

        public bool IsCompanyNameExist(string companyName)
        {
            string query = "SELECT * FROM CompanySetup WHERE Name=@companyName";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@companyName", companyName);
            connection.Open();
            reader = command.ExecuteReader();
            bool isExists = reader.HasRows;
            connection.Close();
            return isExists;
        }

        public List<CompanySetup> GetAllCompanySetup()
        {
            string query = "SELECT * FROM CompanySetup";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            List<CompanySetup> companyList = new List<CompanySetup>();

            while (reader.Read())
            {
                CompanySetup inputCompanySetup = new CompanySetup();
                inputCompanySetup.ID = Convert.ToInt32(reader["Id"]);
                inputCompanySetup.CompanyName = reader["Name"].ToString();
                companyList.Add(inputCompanySetup);
            }
            reader.Close();
            connection.Close();
            return companyList;
        }
    }
}