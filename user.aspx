<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="FruitCity.customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 496px;
            height: 314px;
            border: 1px solid #3399FF;
            background-color: #008000;
        }
        .auto-style6 {
            width: 246px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="table1" class="auto-style1">
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#66CCFF" Text="User Login "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Username:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox1" runat="server" Height="37px" Width="384px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Password: </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server" Height="37px" Width="383px" 
                            TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" Height="65px" OnClick="Button1_Click" Text="Login" Width="181px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [Username], [Password] FROM [user] WHERE (([Username] = @Username) AND ([Password] = @Password))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="Username" PropertyName="Text" 
                                    Type="String" />
                                <asp:ControlParameter ControlID="TextBox2" Name="Password" PropertyName="Text" 
                                    Type="String"  DefaultValue=""/>
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="#FF6600" 
                            ControlToCompare="TextBox2" ControlToValidate="TextBox2" 
                            ErrorMessage="Not Matched"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Label ID="Label2" runat="server" BackColor="#99CCFF" BorderColor="#0066FF" BorderStyle="Double" CssClass="auto-style6" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#FF6699" Text="Please Enter Your Login Credentials!"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
