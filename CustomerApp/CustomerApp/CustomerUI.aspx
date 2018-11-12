<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerUI.aspx.cs" Inherits="CustomerApp.CustomerUI" %>

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
                    <asp:Label ID="Label1" runat="server" Text="Reg No"></asp:Label>
                </td>
                <td>    
                    <asp:TextBox ID="regNoTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Name" runat="server" Text="Name"></asp:Label>
                </td>
                <td>    
                    <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                </td>
                <td>    
                    <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                </td>
                <td>    
                    <asp:TextBox ID="addressTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />
                </td>
                <td id="outputLabel">    
                    <asp:Label ID="outputLabel" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
