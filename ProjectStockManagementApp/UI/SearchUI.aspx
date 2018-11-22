<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchUI.aspx.cs" Inherits="ProjectStockManagementApp.UI.SearchUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            
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
        <asp:GridView ID="searchGridView" runat="server" AutoGenerateColumns="False">
            <Columns>
                
                <asp:TemplateField HeaderText="SL">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                        
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Item">
                    <ItemTemplate>
                        <%--<asp:Label ID="Label3" runat="server" Text='<% #Eval("Name") %>'></asp:Label>--%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Company">
                    <ItemTemplate>
                        <%--<asp:Label ID="Label4" runat="server" Text='<% #Eval("Name") %>'></asp:Label>--%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <%--<asp:Label ID="Label5" runat="server" Text='<% #Eval("AvailabeQuantity") %>'></asp:Label>--%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Reorder Level">
                    <ItemTemplate>
                       <%-- <asp:Label ID="Label6" runat="server" Text='<% #Eval("ReorderLevel") %>'></asp:Label>--%>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
