<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Job_Portal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet3.css" />
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="start">
            <div style="height: 103px">
                <asp:Label ID="Label1" runat="server" Text="JobSearch"></asp:Label>
                <nav>
                    <div class="container d-flex align-items-center">
                        <a href="Default.aspx">Home</a>
                        <a href="ContactUs.aspx">Contact Us</a>
                        <a id="signInHR" runat="server" href="LogIn.aspx">SignIn</a>
                        <a id="signUpHR" runat="server" href="SignUp.aspx">SignUp</a>
                        <asp:LinkButton ID="logOutBtn" runat="server" OnClick="logOutBtn_Click">LogOut</asp:LinkButton>
                        <asp:Label ID="welcomeLBL" Style="margin-left: 300px;" runat="server" Text="Welcome"></asp:Label>
                    </div>
                </nav>
            </div>
        </div>
        <div class="page">
            <div class="back-img">
                <div class="sign-in-text">
                    <h2 class="active">Sign In</h2>
                </div>
                
            </div>
            <div class="form">
                <asp:Label class="LoLabel" runat="server" Text="Email "></asp:Label>
                <asp:TextBox ID="TextBox1" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Email is Required Field " ValidationGroup="login" ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label class="LoLabel" runat="server" Text="Password "></asp:Label>
                <asp:TextBox ID="TextBox2" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Password Required Field " ValidationGroup="login" ControlToValidate="TextBox2" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                &nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
                <asp:Button ID="Button1" runat="server" Text="SIGN IN" ValidationGroup="login" OnClick="Button1_Click" />
                <br />
                <asp:Label class="LoLabel" runat="server" Text="Don't have an account? "></asp:Label>
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/SignUp.aspx" Text="SIGN UP" />
                <br />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
