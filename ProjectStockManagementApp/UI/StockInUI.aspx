<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockInUI.aspx.cs" Inherits="ProjectStockManagementApp.UI.StockInUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <legend><b>
                <h3>Stock In</h3>
            </b></legend>
        </div>

        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Company"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="companyDropDownList" runat="server" Height="16px" Width="130px"></asp:DropDownList></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Item"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="itemDropDownList" runat="server" Width="131px" Height="16px"></asp:DropDownList></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Reorder Level"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="reorderLevelTextBox" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Available Quantity"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="availableQuantityTextBox" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Stock In Quantity"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="stockInQuantityTextBox" runat="server"></asp:TextBox></td>
                </tr>

            </table>
            <div style="text-align: center; width: 420px;">
                <asp:Button ID="saveButton" runat="server" Text="Save" Width="70px" /></div>

        </div>
    </form>
</body>
</html>
