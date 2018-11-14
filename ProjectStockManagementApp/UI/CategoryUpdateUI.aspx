<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoryUpdateUI.aspx.cs" Inherits="ProjectStockManagementApp.UI.CategoryUpdateUI" %>

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
                        <asp:HiddenField ID="idHiddenField" runat="server"/>
                        <asp:Label ID="ID" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="CategoryInputTextBox" runat="server"></asp:TextBox></td>

                </tr>
               
            </table>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="categoryUpdateButton" runat="server" OnClick="categoryUpdateButton_Click" Text="Update" />
            
            
    
    </div>
    </form>
</body>
</html>
