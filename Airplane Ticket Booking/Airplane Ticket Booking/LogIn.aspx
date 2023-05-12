<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Airplane_Ticket_Booking.Giriş" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <link rel="stylesheet" href="css/style.css"/>
</head>
<body>
    <form id="form1" autocomplete="off" runat="server">
        <nav>
            <div class="container d-flex align-items-center">
                <a href="MainPage.aspx">Main Page</a>
                <a ID="MyTicketsHR" runat="server" href="MyTickets.aspx">My Tickets</a>
                <a href="Info.aspx">Info</a>
                <a href="ContactUs.aspx">Contact Us</a>
                <a ID="signInHR" runat="server" href="LogIn.aspx">SignIn</a>
                <a ID="signUpHR" runat="server" href="SignUp.aspx">SignUp</a>
                <asp:LinkButton ID="logOutBtn" runat="server" OnClick="logOutBtn_Click">LogOut</asp:LinkButton>
                <asp:Label ID="welcomeLBL" CssClass="baslabel fas fa-bus" style="margin-left: 300px;" runat="server" Text="Welcome"></asp:Label>
            </div>
        </nav>
        <div class="section d-flex align-items-center justify-content-center">
            <div class="girisSayfasi">
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Label ID="emailLBL" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="emailTB" runat="server"></asp:TextBox>
                </div>
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Label ID="passwordLBL" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="passwordTB" runat="server"></asp:TextBox>
                </div>
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LogIn" CssClass="girisYapButon" /><br />
                </div>
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Label ID="lblUyari" runat="server" Text="" CssClass="girisUyari"></asp:Label>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
