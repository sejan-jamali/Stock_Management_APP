using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectStockManagementApp.BLL;
using ProjectStockManagementApp.DAL.Model;

namespace ProjectStockManagementApp
{
    public partial class CategorySetupUI : System.Web.UI.Page
    {

        CategoryManeger maneger = new CategoryManeger();
        protected void Page_Load(object sender, EventArgs e)
        {

            CategorySetupGridView.DataSource = maneger.GetAllCategory();
            CategorySetupGridView.DataBind();

        }

        protected void categorySaveButton_Click(object sender, EventArgs e)
        {
            CategoryInput input = new CategoryInput();
            input.categotyName = CategoryInputTextBox.Text;

            string message = maneger.Save(input);
            output.Text = message;

            CategorySetupGridView.DataSource = maneger.GetAllCategory();
            CategorySetupGridView.DataBind();
        }
    }
}