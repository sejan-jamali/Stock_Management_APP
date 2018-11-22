using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectStockManagementApp.BLL;

namespace ProjectStockManagementApp.UI
{
    public partial class AdminLogInUI : System.Web.UI.Page
    {
        AdminManager aAdminManager =new AdminManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logInButton_Click(object sender, EventArgs e)
        {
            string name = nameTextBox.Text;
            bool isExistAdmin=aAdminManager.IsExistAdminName(name);
            if (isExistAdmin)
            {
                Response.Redirect("IndexUI.aspx");
            }
            else
            {
                Response.Redirect("Search&ViewUI.aspx");
            }
            

        }
    }
}