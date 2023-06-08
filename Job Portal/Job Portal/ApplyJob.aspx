<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplyJob.aspx.cs" Inherits="Job_Portal.ApplyJob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet2.css" />
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="start">
            <div style="height: 103px">
                <asp:Label ID="Label3" runat="server" Text="JobSearch"></asp:Label>
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
        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Black" Font-Size="Large"></asp:Label><br />
        <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="Medium"></asp:Label><br />
        <div class="container">
            <div class="card">
                <h3>Upload Your Resume</h3>
                <div class="drop_box">
                    <p>Files Supported: PDF, TEXT, DOC , DOCX</p>
                    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#3366FF" BorderStyle="None" ForeColor="White" />
                    <br />
                    <br />
                </div>
                <asp:Button ID="Button1" runat="server" Text="APPLY" OnClick="Button1_Click" />
            </div>
        </div>
    </form>
</body>
</html>
