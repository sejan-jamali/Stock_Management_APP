using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectStockManagementApp.BLL;
using ProjectStockManagementApp.DAL.Model;

namespace ProjectStockManagementApp.UI
{
    public partial class ItemSetupUI : System.Web.UI.Page
    {
        ItemManager itemManager = new ItemManager();
        CategoryManeger categoryManeger = new CategoryManeger();
        CompanySetupManager  companySetupManager = new CompanySetupManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            categoryDropDownList.DataSource = categoryManeger.GetAllCategory();
            categoryDropDownList.DataTextField = "Name";
            categoryDropDownList.DataValueField = "Id";
            categoryDropDownList.DataBind();
            companyDropDownList.DataSource = companySetupManager.GetAllCompanySetup();
            companyDropDownList.DataTextField = "Name";
            companyDropDownList.DataValueField = "Id";
            companyDropDownList.DataBind();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Item items = new Item();
            items.Name = itemNameTextBox.Text;
            items.ReorderLevel = Convert.ToInt32(reorderLevelTextBox.Text);
            items.CompanyId = Convert.ToInt32(companyDropDownList.SelectedValue);
            items.CategoryId = Convert.ToInt32(categoryDropDownList.SelectedValue);

            string message = itemManager.Save(items);
            Response.Write(message);

        }
    }
}