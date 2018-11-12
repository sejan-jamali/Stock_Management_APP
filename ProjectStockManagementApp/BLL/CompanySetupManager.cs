using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjectStockManagementApp.DAL.Gateway;
using ProjectStockManagementApp.DAL.Model;

namespace ProjectStockManagementApp.BLL
{
    public class CompanySetupManager
    {
        private CompanySetupGateway companySetupGateway = new CompanySetupGateway();

        public string Save(CompanySetup inputCompanySetup)
        {
            if (companySetupGateway.IsCompanyNameExist(inputCompanySetup.CompanyName))
            {
                return "This Company Name is Already Exist";
            }
            else
            {
                int rowAffect = companySetupGateway.Save(inputCompanySetup);
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

        public List<CompanySetup> GetAllCompanySetup()
        {
            return companySetupGateway.GetAllCompanySetup();
        }
    }
}