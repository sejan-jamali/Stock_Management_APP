<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInUI.aspx.cs" Inherits="CustomerApp.LogInUI" %>

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
                <td>
                    <asp:Button ID="logInButton" runat="server" Text="LogIn" OnClick="logInButton_Click"/>
                </td>
                <td>
                    <asp:Label ID="outputLabel" runat="server"></asp:Label>
                </td>           
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
