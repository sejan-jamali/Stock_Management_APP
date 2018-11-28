using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjectStockManagementApp.DAL.Gateway;
using ProjectStockManagementApp.DAL.Model;

namespace ProjectStockManagementApp.BLL
{
    public class StockInManager
    {
        StockInGateway stockInGateway = new StockInGateway();
        public string Save(Item item)
        {
            int rowAffect = stockInGateway.Save(item);
            if (rowAffect > 0)
            {

                return "Save Successful";
            }
            else
            {
                return "Save Failed";

            }
        }
    }
}