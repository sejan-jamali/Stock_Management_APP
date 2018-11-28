<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSalesUI.aspx.cs" Inherits="ProjectStockManagementApp.UI.ViewSalesUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/momentjs/2.14.1/moment.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
   <script>
       $(function () {
           $('#datetimepicker1').datetimepicker();
       });
</script>
    <script>
        $(function () {
            $('#datetimepicker2').datetimepicker();
        });
</script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table>
                
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="From Date"></asp:Label></td>
                    <td><div class='input-group date' id='datetimepicker1'>
                        <%--<input type='text' class="form-control" />--%>
                        <asp:TextBox ID="fromDateTextBox" runat="server"></asp:TextBox>
                     <span class="input-group-addon">
                     <span class="glyphicon glyphicon-calendar"></span>
                     </span>
                  </div></td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="To Date"></asp:Label></td>
                    <td><div class='input-group date' id='datetimepicker2'>
                        <%--<input type='text' class="form-control" />--%>
                        <asp:TextBox ID="toDateTextBox" runat="server"></asp:TextBox>
                     <span class="input-group-addon">
                     <span class="glyphicon glyphicon-calendar"></span>
                     </span>
                  </div></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="searchButton" runat="server" Text="Search" Width="83px" /></td>
                </tr>
                
            </table>
            
            
            

        </div>
        
                  
          
    </form>
</body>
</html>