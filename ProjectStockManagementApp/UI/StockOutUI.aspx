<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockOutUI.aspx.cs" Inherits="ProjectStockManagementApp.UI.StockOutUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: justify;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <table style="width: 359px">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Company"></asp:Label></td>
                <td class="auto-style1">
                    <asp:DropDownList ID="companyDropDownList" runat="server" Width="198px"></asp:DropDownList></td>
            </tr>
        
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Item"></asp:Label></td>
                <td class="auto-style1">
                    <asp:DropDownList ID="itemDropDownList" runat="server" Width="198px"></asp:DropDownList></td>
            </tr>
        
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Reorder Level"></asp:Label></td>
                <td class="auto-style1">
                    <asp:TextBox ID="reorderLevelTextBox" runat="server" Width="193px">&lt;view&gt;</asp:TextBox></td>
            </tr>
        
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Availabe Quantity"></asp:Label></td>
                <td class="auto-style1">
                    <asp:TextBox ID="availabeQuantityTextBox" runat="server" Width="192px">&lt;view&gt;</asp:TextBox></td>
            </tr>
        
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Stock In Quantity"></asp:Label></td>
                <td class="auto-style1">
                    <asp:TextBox ID="stockInQuantityTextBox" runat="server" Width="191px"></asp:TextBox></td>
            </tr>
            
            <tr>
                <td></td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="addButton" runat="server" Text="Add" style="margin-left: 0px" Width="100px" /></td>
            </tr>

        </table>
        
        <br/>
        <br/>
        <br/>
        
        <div>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="813px">
                
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
                    
                    
                </Columns>

            </asp:GridView>
            
            <table>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="sellButton" runat="server" Text="Sell" Width="96px" /></td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="damageButton" runat="server" Text="Damage" Width="96px" /></td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="lostButton" runat="server" Text="Lost" Width="96px" /></td>
                </tr>
            </table>

        </div>

    </div>
    </form>
</body>
</html>
