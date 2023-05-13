<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Airplane_Ticket_Booking.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <form id="form1" autocomplete="off" runat="server">
        <nav>
            <div class="container d-flex align-items-center">
                <a href="MainPage.aspx">Main Page</a>
                <a id="MyTicketsHR" runat="server" href="MyTickets.aspx">My Tickets</a>
                <a href="Info.aspx">Info</a>
                <a href="ContactUs.aspx">Contact Us</a>
                <a id="signInHR" runat="server" href="LogIn.aspx">SignIn</a>
                <a id="signUpHR" runat="server" href="SignUp.aspx">SignUp</a>
                <asp:LinkButton ID="logOutBtn" runat="server" OnClick="logOutBtn_Click">LogOut</asp:LinkButton>
                <asp:Label ID="welcomeLBL" CssClass="baslabel fas fa-bus" Style="margin-left: 300px;" runat="server" Text="Welcome"></asp:Label>
            </div>
        </nav>
        <div class="section d-flex align-items-center justify-content-center">
            <div class="girisSayfasi">
                <div class="text-center">
                    <h1>Please Sign Up</h1>
                </div>
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Label ID="emailLBL" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="emailTB" runat="server"></asp:TextBox>
                </div>
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Label ID="passwordLbl" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="passwordTB" runat="server"></asp:TextBox>
                </div>
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Label ID="nameLBL" runat="server" Text="Name"></asp:Label>
                    <asp:TextBox ID="nameTB" runat="server"></asp:TextBox>
                </div>
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Label ID="surnameLBL" runat="server" Text="Surname"></asp:Label>
                    <asp:TextBox ID="surnameTB" runat="server"></asp:TextBox>
                </div>
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Label ID="identityLBL" runat="server" Text="Identity Number"></asp:Label>
                    <asp:TextBox ID="identityTB" runat="server"></asp:TextBox>
                </div>
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Label ID="Label3" runat="server" Text="Surname"></asp:Label>
                    <asp:DropDownList ID="genderDropDownList" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Label ID="phoneLBL" runat="server" Text="Phone"></asp:Label>
                    <asp:TextBox ID="phoneTB" runat="server"></asp:TextBox>
                </div>
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Button ID="signUpBtn" runat="server" OnClick="SignUp_Click" Text="SignUp" CssClass="girisYapButon" /><br />
                </div>
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Label ID="warningLbl" runat="server" Text="" CssClass="girisUyari"></asp:Label>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
