<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Job_Portal.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link rel="stylesheet" href="StyleSheet2.css" />
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="start">
            <div style="height: 103px" class="nav">
                <asp:Label ID="Label1" runat="server" Text="JobSearch"></asp:Label>
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
        </div>
        <div class="container">
            <formview id="contact">
                <asp:Label ID="Label2" runat="server" Text="Contact Us"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Email"></asp:TextBox>
                <br />
                <textarea id="TextArea1" cols="20" name="S1" rows="2" placeholder="Message"></textarea><br />
                <asp:Button ID="BtnSend" runat="server" Text="SEND" OnClick="BtnSend_Click" />
            </formview>
        </div>
    </form>
</body>
</html>
