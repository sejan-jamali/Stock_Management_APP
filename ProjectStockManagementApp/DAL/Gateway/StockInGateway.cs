using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ProjectStockManagementApp.DAL.Model;

namespace ProjectStockManagementApp.DAL.Gateway
{
    public class StockInGateway : BaseGateway
    {

        public int Save(Item item)
        {
            string query = "INSERT INTO Item(ReorderLevel,AvailableQuantity,StockInQuantity) VALUES(@reorderlevel,@availablequantity,@stockinquantity)";
            command = new SqlCommand(query,connection);
            command.Parameters.AddWithValue("@reorderlevel", item.ReorderLevel);
            command.Parameters.AddWithValue("@availablequantity", item.AvailableQuantity);
            command.Parameters.AddWithValue("@stockinquantity", item.StockInQuantity);

            connection.Open();
            int rowAffect = command.ExecuteNonQuery();
            connection.Close();

            return rowAffect;
        }

    }
}