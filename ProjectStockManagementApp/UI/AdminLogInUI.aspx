<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogInUI.aspx.cs" Inherits="ProjectStockManagementApp.UI.AdminLogInUI" %>

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
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
            
                <td>
                    <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>    
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
            
                <td>
                    <asp:TextBox ID="passwordTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="background-color: #FFFFFF">
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <asp:Button ID="logInButton" runat="server" Text="Log In" OnClick="logInButton_Click" style="height: 26px" />
                </td>
            </tr>    
            
            
        </table>
    </div>
    </form>
</body>
</html>
