<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegForm1.aspx.cs" Inherits="FruitCity.RegForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 846px;
            margin-right: 335px;
        }
        .auto-style4 {
            margin-left: 9px;
        }
        .auto-style5 {
            margin-left: 11px;
            margin-right: 14px;
        }
        .auto-style6 {
            margin-left: 8px;
        }
        .auto-style9 {
            height: 27px;
            width: 422px;
        }
        .auto-style10 {
            height: 18px;
            width: 422px;
        }
        .auto-style11 {
            height: 30px;
        }
        .auto-style13 {
            width: 422px;
            height: 58px;
        }
        .auto-style18 {
            margin-left: 6px;
        }
        .auto-style21 {
            width: 422px;
        }
        .auto-style23 {
            margin-left: 11px;
        }
        .auto-style24 {
            margin-left: 10px;
        }
        .auto-style25 {
            width: 470px;
            height: 58px;
        }
        .auto-style26 {
            height: 27px;
            width: 470px;
        }
        .auto-style27 {
            width: 470px;
        }
        .auto-style28 {
            height: 18px;
            width: 470px;
        }
        .auto-style29 {
            width: 470px;
            height: 57px;
        }
        .auto-style30 {
            width: 422px;
            height: 57px;
        }
        .auto-style31 {
            width: 470px;
            height: 145px;
        }
        .auto-style32 {
            height: 145px;
        }
        .auto-style33 {
            margin-left: 6px;
            margin-bottom: 0px;
        }
        .auto-style34 {
            height: 58px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="table1" class="auto-style1">
                <tr>
                    <td class="auto-style34" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" ClientIDMode="Predictable" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" Text="This is Where You Add Fruid Items"></asp:Label>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">Id</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Height="43px" Width="592px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" draggable="true">Fruit Name</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5" Height="46px" Width="591px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29">Fruit Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style30">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style6" Height="47px" Width="589px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style31">Quantity&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
                        Stock Date</td>
                    <td class="auto-style32">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style18" Height="39px" Width="593px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style33" Height="45px" Width="593px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style10">
                        <asp:Button ID="Button1" runat="server" BackColor="#9999FF" BorderColor="#FF9999" CssClass="auto-style24" Font-Bold="True" Height="52px" OnClick="Button1_Click" Text="INSERT" Width="597px" />
                        <br />
                        <asp:Button ID="Button2" runat="server" BackColor="#FF66FF" CssClass="auto-style23" Font-Bold="True" Height="53px" OnClick="Button2_Click" Text="UPDATE" Width="597px" />
                        <br />
                        <asp:Button ID="Button3" runat="server" BackColor="#33CCFF" CssClass="auto-style23" Font-Bold="True" ForeColor="#0000CC" Height="51px" OnClick="Button3_Click" Text="DELETE" Width="597px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" BackColor="Black" Font-Size="Large" ForeColor="#9966FF" Text="message"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [register]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3" Height="374px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1107px">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="FruitName" HeaderText="FruitName" SortExpression="FruitName" />
                                <asp:BoundField DataField="FruitPrice" HeaderText="FruitPrice" SortExpression="FruitPrice" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                <asp:BoundField DataField="StockDate" HeaderText="StockDate" SortExpression="StockDate" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style21">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
