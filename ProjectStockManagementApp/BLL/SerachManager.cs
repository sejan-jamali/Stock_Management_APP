using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjectStockManagementApp.DAL.Gateway;
using ProjectStockManagementApp.DAL.Model;

namespace ProjectStockManagementApp.BLL
{
    public class SerachManager
    {
        SearchGateway searchGateway = new SearchGateway();
        //public Item GetItemById(int id)
        //{
        //    return searchGateway.GetItemById(id);
        //}

        //public string GetCompanyById(int id)
        //{
        //    return searchGateway.GetCompanyById(int id).ToString();
        //}
    }
}