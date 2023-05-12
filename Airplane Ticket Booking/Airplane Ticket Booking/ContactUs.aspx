<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Airplane_Ticket_Booking.Iletisim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

</head>
<body>
    <form id="form1" runat="server">
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

        <div class="row">
            <div id="iletisim">
            </div>
        </div>
        <div class="row">
            <div class="col-md-5">

                <img style="margin: 100px;" id="img1" src="img/bir.png" alt="Alternate Text" />
                <br />
                <div style="margin-left: 100px; color: white;" id="adres">
                    <h2>Adress : Büyükdere Odunpazarı Eskişehir
                        <br />
                        Telefon : +90 000 000 00 00
                        <br />
                        Fax : +90 000 000 00 00
                        <br />
                        E-Posta : huseyinkaymak99@gmail.com
                
                              </h2>

                </div>
            </div>
            <div class="col-md-7">
                <iframe style="margin: 100px;" class="maps" src="https://www.google.com/maps/d/u/0/embed?mid=1g07pFKrGGUWLMKvx-g40Qnv0-Yk&ll=39.76265267638597%2C30.523317309888647&z=13" width="600" height="450" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>
        </div>
    </form>
</body>
</html>
