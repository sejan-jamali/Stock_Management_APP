using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomerApp
{
    public partial class LogInUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logInButton_Click(object sender, EventArgs e)
        {
            Admin admin=new Admin();
            admin.Name = nameTextBox.Text;
            admin.Password = passwordTextBox.Text;

            string connectionString = @"Data Source=(local);Initial Catalog=CustomerDB;Integrated Security=True";
            string query = "SELECT * FROM AdminInfo WHERE Name=@name";
            
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("@name",admin.Name);
            
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            bool b = reader.HasRows;
            connection.Close();
            if (b)
            {
                Response.Redirect("CustomerUI.aspx");
            }
            else
            {
                outputLabel.Text = "Wrong Name";
            }

        }
    }
}