<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategorySetupUI.aspx.cs" Inherits="ProjectStockManagementApp.UI.CategorySetupUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <div><h3>Category Name</h3></div>
        
        <div>
            
            <table>
                <tr>
                    
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="CategoryInputTextBox" runat="server"></asp:TextBox></td>

                </tr>
               
            </table>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="categorySaveButton" runat="server" OnClick="categorySaveButton_OnClick" Text="Save" />
            
            
            <br />
            <asp:Label ID="output" runat="server"></asp:Label>
            
            
            <asp:GridView ID="CategorySetupGridView" runat="server" Width="180px" AutoGenerateColumns="False">
                
                <Columns>
                    
                    <asp:TemplateField HeaderText="SL">
                        <ItemTemplate>
                    <%--<asp:Label runat="server" Text='<% #Eval("Id") %>'></asp:Label>--%>  
                             <%# Container.DataItemIndex + 1 %>
                            <asp:HiddenField ID="idHiddenField" Value='<% #Eval("Id") %>' runat="server"/>                          
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CategoryName">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<% #Eval("categoryName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton  runat="server" OnClick="LinkButton_Click">Update</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
                

            </asp:GridView>
            

        </div>
    
    </div>
    </form>
</body>
</html>
