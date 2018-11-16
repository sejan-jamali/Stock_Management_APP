<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search&ViewUI.aspx.cs" Inherits="ProjectStockManagementApp.UI.Search_ViewUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 299px;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            width: 299px;
            height: 30px;
        }
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            width: 299px;
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <table>
            
            <tr>
                
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Company"></asp:Label></td>
                <td class="auto-style1">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="companyDropDownList" runat="server" Height="16px" Width="206px"></asp:DropDownList></td>

            </tr>
            
            <tr>
                
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label></td>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="categoryDropDownList" runat="server" Width="208px"></asp:DropDownList></td>

            </tr>
            
            <tr>
                
                <td class="auto-style2"></td>
                <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="searchButton" runat="server" Text="Search" Width="91px" /></td>

            </tr>

        </table>
        
        <br/>
        <br/>
        <br/>
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="697px">
            
            <Columns>
                    
                    <asp:TemplateField HeaderText="SL">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Item">
                        <ItemTemplate>
                           
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Company">
                        <ItemTemplate>
                           
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                           
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                <asp:TemplateField HeaderText="Reorder Level">
                        <ItemTemplate>
                           
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>

        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
