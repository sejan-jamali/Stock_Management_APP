<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategorySetupUI.aspx.cs" Inherits="ProjectStockManagementApp.CategorySetupUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <div><h3>Category Setup</h3></div>
        <div>
            
            
            <table>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Name"></asp:Label> </td>
                    <td><asp:TextBox ID="CategoryInputTextBox" runat="server"></asp:TextBox></td>
                </tr>
            </table>
            

            <br />

            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Button ID="categorySaveButton" runat="server" Text="Save" OnClick="categorySaveButton_Click" Width="80px" />

        </div>
        
        <div>
            
            <asp:GridView ID="CategorySetupGridView" runat="server"></asp:GridView>

            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="output" runat="server"></asp:Label>

        </div>

        <columns>
            
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<% #Eval("SL") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<% #Eval("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </columns>
    
    </div>
    </form>

</body>
</html>
