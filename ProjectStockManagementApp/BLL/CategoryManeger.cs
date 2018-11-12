using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjectStockManagementApp.DAL.Gateway;
using ProjectStockManagementApp.DAL.Model;

namespace ProjectStockManagementApp.BLL
{
    public class CategoryManeger
    {
        private CategorySetupGateway categoryGateway = new CategorySetupGateway();

        public string Save(CategoryInput input)
        {

            if (categoryGateway.IsRegNoExists(input.categotyName))
            {
                return "This Category Type is Already Exists";
            }
            else
            {
                int rowAffect = categoryGateway.Save(input);
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

        public List<CategoryInput> GetAllCategory()
        {
            return categoryGateway.GetAllCategory();
        }
    }
}