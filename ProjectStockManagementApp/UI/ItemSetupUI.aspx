<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemSetupUI.aspx.cs" Inherits="ProjectStockManagementApp.UI.ItemSetupUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: auto; margin-right: auto; text-align: center;">
            <legend><b>
                <h3>Item Setup</h3>
            </b></legend>
        </div>

        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="categoryDropDownList" runat="server" Height="16px" Width="127px"></asp:DropDownList></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Company"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="companyDropDownList" runat="server" Width="126px"></asp:DropDownList></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Item Name"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="itemNameTextBox" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>&nbsp;<asp:Label ID="Label4" runat="server" Text="Reorder Level"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="reorderLevelTextBox" runat="server"></asp:TextBox></td>
                </tr>


            </table>

            <div style="text-align: center; width: 379px;">
                <asp:Button ID="saveButton" runat="server" Text="Save" Width="70px" OnClick="saveButton_Click" /></div>

        </div>
    </form>
    
    
    
    
    
    
 
