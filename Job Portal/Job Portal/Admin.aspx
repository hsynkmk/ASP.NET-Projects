<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Job_Portal.Admin" %>

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
                    <h2 class="active">Save a Job</h2>
                </div>
            </div>
            <div class="form">
                <asp:Label class="LoLabel" runat="server" Text="Company "></asp:Label>
                <asp:TextBox ID="CompanyTB" class="LoTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label class="LoLabel" runat="server" Text="Location "></asp:Label>
                <asp:TextBox ID="LocationTB" class="LoTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label class="LoLabel" runat="server" Text="Job "></asp:Label>
                <asp:TextBox ID="JobTB" class="LoTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label class="LoLabel" runat="server" Text="Salary "></asp:Label>
                <asp:TextBox ID="SalaryTB" class="LoTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label class="LoLabel" runat="server" Text="Qualification "></asp:Label>
                <asp:TextBox ID="QualificationTB" class="LoTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label class="LoLabel" runat="server" Text="Experiance "></asp:Label>
                <asp:TextBox ID="ExperianceTB" class="LoTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label class="LoLabel" runat="server" Text="Type "></asp:Label>
                <asp:TextBox ID="TypeTB" class="LoTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Label class="LoLabel" runat="server" Text="Description "></asp:Label>
                <asp:TextBox ID="DescriptionTB" class="LoTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="SaveBTN" runat="server" Text="Save" ValidationGroup="login" OnClick="SaveBTN_Click" />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
