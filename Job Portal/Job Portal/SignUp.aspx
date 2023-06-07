<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Job_Portal.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet3.css" />
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" />

</head>
<body>
<form id="form1" runat="server">
                <div style="height: 103px" class="nav">
                <asp:Label ID="Label9" runat="server" Text="JobSearch"></asp:Label>
                <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
                    <Items>
                        <asp:MenuItem Text="Home" Value="Home" NavigateUrl="Default.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Contact Us" Value="Contact Us" NavigateUrl="ContactUs.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Sign Up" Value="Sign Up" NavigateUrl="SignUp.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Login" Value="Login" NavigateUrl="Login.aspx"></asp:MenuItem>
                    </Items>
                    <StaticMenuItemStyle ForeColor="White" HorizontalPadding="30px" />
                    <StaticItemTemplate>
                        <%# Eval("Text") %>
                    </StaticItemTemplate>
                </asp:Menu>
            </div>
        <div class="page" style="height: 800px;">
            <div class="back-img" style="height: 160px;">
                <div class="sign-in-text" style="top: 80px;">
                    <h2 class="active">Sign Up</h2>
                </div>
                <div class="layer">
                </div>
                <!--/.layer-->
                <p class="point">&#9650;</p>
            </div>
            <div class="form">
                <asp:Label ID="Label1" class="LoLabel" runat="server" Text="FirstName :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
                <asp:TextBox ID="TextBox1" class="LoTextBox" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Firstname is Required Field " ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label2" class="LoLabel" runat="server" Text="LastName :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
                <asp:TextBox ID="TextBox2" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Last name is Required Field " ControlToValidate="TextBox2" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label3" class="LoLabel" runat="server" Text="Address :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required Field " ControlToValidate="TextBox3" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator><br />
                <asp:Label ID="Label4" class="LoLabel" runat="server" Text="Mobile Number :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
                <asp:TextBox ID="TextBox4" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required Field " ControlToValidate="TextBox4" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label5" class="LoLabel" runat="server" Text="Gender :"></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:Label ID="Label6" class="LoLabel" runat="server" Text="BirthDate :"></asp:Label>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="100px" OnSelectionChanged="Calendar1_SelectionChanged" Width="300px" NextPrevFormat="FullMonth" BorderWidth="1px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#333333" Font-Bold="True" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" BorderColor="Black" BorderWidth="4px" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
                <br />
                <asp:Label ID="Label7" class="LoLabel" runat="server" Text="Skill :"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Asp.Net</asp:ListItem>
                    <asp:ListItem>VB.Net</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label8" class="LoLabel" runat="server" Text="Experiance :"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
                <asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
