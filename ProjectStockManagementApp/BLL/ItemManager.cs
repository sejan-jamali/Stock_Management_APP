using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjectStockManagementApp.DAL.Gateway;
using ProjectStockManagementApp.DAL.Model;

namespace ProjectStockManagementApp.BLL
{
    public class ItemManager
    {
        CategorySetupGateway categoryGateway = new CategorySetupGateway();
        CompanySetupGateway companyGateway = new CompanySetupGateway();
        ItemGateway itemGateway = new ItemGateway();
        Item item = new Item();

        public string Save(Item input)
        {

            if (itemGateway.IsExists(input.Name) || (itemGateway.IsEmpty(input.Name)))
            {
                return "This Category Type is Already Exists Or Type cant be empty";
            }
            else
            {
                int rowAffect = itemGateway.Save(input);
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

        public List<Item> GetAllItems()
        {
            return itemGateway.GetAllItems();
        } 

    }
}