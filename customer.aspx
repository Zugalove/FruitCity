<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="FruitCity.customer1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 441px;
            border-color: #CCFFFF;
        }
        .auto-style2 {
            width: 451px;
        }
        .auto-style3 {
            width: 451px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name: </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Surname: </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Age</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Phone Number: </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Gender:<br />
                    <br />
                    Username:<br />
                    <br />
                    Password</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="300px"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox7" runat="server" Width="300px"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox8" runat="server" Width="300px"></asp:TextBox>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [customer]"></asp:SqlDataSource>
                    <asp:Button ID="Button1" runat="server" Height="39px" Text="add" 
                        Width="310px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
