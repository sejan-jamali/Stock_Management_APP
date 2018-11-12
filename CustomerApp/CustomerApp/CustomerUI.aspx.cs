using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomerApp
{
    public partial class CustomerUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Customer aCustomer = new Customer();
            aCustomer.RegNo = regNoTextBox.Text;
            aCustomer.Name = nameTextBox.Text;
            aCustomer.Email = emailTextBox.Text;
            aCustomer.Addrss = addressTextBox.Text;

            string connectionString = @"Data Source=(local);Initial Catalog=CustomerDB;Integrated Security=True";
            string query = "INSERT INTO CustomerInfo(RegNo, Name, Email, Address) VALUES(@regNo,@name,@email,@address)";

            SqlConnection connection=new SqlConnection(connectionString);
            SqlCommand command=new SqlCommand(query,connection);

            command.Parameters.AddWithValue("@regNo", aCustomer.RegNo);
            command.Parameters.AddWithValue("@name", aCustomer.Name);
            command.Parameters.AddWithValue("@email", aCustomer.Email);
            command.Parameters.AddWithValue("@address", aCustomer.Addrss);

            connection.Open();
            int rowEffect=command.ExecuteNonQuery();
            connection.Close();

            if (rowEffect > 0)
            {
                outputLabel.Text = "Inssert Successful";
                regNoTextBox.Text=String.Empty;
                nameTextBox.Text=String.Empty;
                emailTextBox.Text=String.Empty;
                addressTextBox.Text=String.Empty;
            }
            else
            {
                outputLabel.Text = "Insertion Fail";
            }
        }
    }
}