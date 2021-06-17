<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="FruitCity.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            margin-top: 37px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="839px" Width="1463px">
            <asp:Panel ID="Panel2" runat="server" BackColor="#FF9933" ForeColor="#FF9999" 
                Height="50px" Width="992px">
                <div class="auto-style1">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" BackColor="#FF9933" BorderColor="#99CCFF" 
                        Font-Bold="True" Font-Size="XX-Large" Text="Fruitorrama Fruit App" 
                        ForeColor="#334669"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFF99" 
                        CssClass="auto-style2" Height="25px" Width="768px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" BackColor="#6699FF" 
                        BorderColor="#99CCFF" Height="36px" Text="Search Items" Width="204px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <asp:Menu ID="Menu1" runat="server" BackColor="#FF9933" 
                    DynamicHorizontalOffset="2" Font-Names="Times New Roman" Font-Size="X-Large" 
                    ForeColor="#333399" Orientation="Horizontal" StaticSubMenuIndent="10px" 
                    BorderColor="#FF6600" DynamicBottomSeparatorImageUrl="~/BlackberrySmall.jpg" 
                    Font-Bold="True" ItemWrap="True">
                    <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#FFFBD6" />
                    <DynamicSelectedStyle BackColor="#FFCC66" />
                    <Items>
                        <asp:MenuItem NavigateUrl="~/home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                        <asp:MenuItem Text="Customer" Value="User">
                            <asp:MenuItem NavigateUrl="~/user.aspx" Text="Login" Value="Loging">
                            </asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/customer.aspx" Text="Sign Up" Value="Sign Up">
                            </asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/user.aspx" Text="Admin" Value="Staff">
                            <asp:MenuItem NavigateUrl="~/user.aspx" Text="Login" Value="Login">
                            </asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/customer.aspx" Text="Sign Up" Value="Sign Up">
                            </asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Cart" Value="Cart"></asp:MenuItem>
                        <asp:MenuItem Text="Contact" Value="Contact"></asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#FFCC66" />
                </asp:Menu>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="auto-style1">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" 
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                        CellPadding="2" DataSourceID="SqlDataSource2" ForeColor="Black" 
                        GridLines="None" Height="236px" Width="992px">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="FruitName" HeaderText="FruitName" SortExpression="FruitName" />
                            <asp:BoundField DataField="FruitPrice" HeaderText="FruitPrice" SortExpression="FruitPrice" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <img alt="" src="images/breadfruit_small.gif" 
                        style="height: 62px; width: 124px; margin-top: 0px" />
                    <img alt="" src="images/BlackberrySmall.jpg" 
                        style="height: 65px; width: 138px; margin-top: 0px" />
                    <img alt="" src="images/one.jfif" style="height: 70px; width: 157px" />
                    <img alt="" src="images/two%20(1).jfif" style="height: 74px; width: 158px" />
                    <img alt="" src="images/three(1).jfif" style="height: 70px; width: 157px" />
                    <img alt="" src="images/four%20(1).jfif" style="height: 72px; width: 133px" />
                </div>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FruitName], [FruitPrice] FROM [register] WHERE ([FruitName] = @FruitName)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="FruitName" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FruitName], [FruitPrice] FROM [register] WHERE ([FruitName] = @FruitName)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="FruitName" PropertyName="Text" Type="String" DefaultValue=""/>
                    </SelectParameters>
                </asp:SqlDataSource>
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
