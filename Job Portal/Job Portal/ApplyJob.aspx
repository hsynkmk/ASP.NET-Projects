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
            <div style="height: 103px" class="nav">
                <asp:Label ID="Label3" runat="server" Text="JobSearch"></asp:Label>
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
