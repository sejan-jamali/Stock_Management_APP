using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectStockManagementApp.DAL.Gateway;
using ProjectStockManagementApp.DAL.Model;
using ProjectStockManagementApp.BLL;

namespace ProjectStockManagementApp.UI
{
    
    public partial class SearchUI : System.Web.UI.Page
    {

        ItemManager itemManager = new ItemManager();
        CategoryManeger categoryManeger = new CategoryManeger();
        CompanySetupManager companySetupManager = new CompanySetupManager();
        SearchGateway searchGateway = new SearchGateway();
        SerachManager serachManager = new SerachManager(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            companyDropDownList.DataSource = companySetupManager.GetAllCompanySetup();
            companyDropDownList.DataTextField = "Name";
            companyDropDownList.DataValueField = "Id";
            companyDropDownList.DataBind();
            categoryDropDownList.DataSource = categoryManeger.GetAllCategory();
            categoryDropDownList.DataTextField = "Name";
            categoryDropDownList.DataValueField = "Id";
            categoryDropDownList.DataBind();
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            //int id = Convert.ToInt32(companyDropDownList.SelectedValue);
            //searchGridView.DataSource = serachManager.GetItemById(id);
            //searchGridView.DataBind();

            //int id2 = Convert.ToInt32(idHiddenField2);
            //searchGridView.DataSource = categoryManeger.GetCategoryById(id2);
            //searchGridView.DataBind();
        }
    }
}