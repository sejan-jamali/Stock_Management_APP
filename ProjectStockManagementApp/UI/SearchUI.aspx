<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchUI.aspx.cs" Inherits="ProjectStockManagementApp.UI.SearchUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h1 {
    color: black;
    text-align: center;
}

         body {
             background-color: lightblue;
         }
        .center {
            text-align: center;
            margin: auto;
            width: 60%;
            border: 3px solid #73AD21;
            padding: 10px;
            position: relative;
        }
        .center1 {
            text-align: center;
            margin: auto;
            width: 33%;
            padding: 10px;
        }
        .solid {border-style: solid;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="center">
        <h1 class="solid">Stock Management System</h1>
        
        <table class="center1">
            
            <tr>
                
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Comapny"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="companyDropDownList" runat="server" Width="186px"></asp:DropDownList>
                    <asp:HiddenField ID="idHiddenField" Value='<% #Eval("Id") %>' runat="server"/>
                </td>

            </tr>
            <tr>
                
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="categoryDropDownList" runat="server" Height="20px" Width="187px"></asp:DropDownList>
                    <asp:HiddenField ID="idHiddenField2" Value='<% #Eval("Id") %>' runat="server"/>
                </td>

            </tr>
            <tr>
                
                <td>
                    <asp:Label runat="server"></asp:Label></td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="searchButton" runat="server" style="margin-left: 0px" Text="Search" Width="74px" OnClick="searchButton_Click" />
                </td>

            </tr>
        </table>
    
    </div>
        <asp:GridView ID="itemGridView" runat="server" AutoGenerateColumns="False" Width="697px" CssClass="center1">
            
            <Columns>
                    
                    <asp:TemplateField HeaderText="SL">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Item">
                        <ItemTemplate>
                           <asp:Label ID="Label3" runat="server" Text='<% #Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Company">
                        <ItemTemplate>
                           <asp:Label ID="Label4" runat="server" Text='<% #Eval("CompanyName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                           <asp:Label ID="Label5" runat="server" Text='<% #Eval("AvailableQuantity") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                <asp:TemplateField HeaderText="Reorder Level">
                        <ItemTemplate>
                           <asp:Label ID="Label6" runat="server" Text='<% #Eval("ReorderLevel") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>

        </asp:GridView>
    </form>
</body>
</html>
