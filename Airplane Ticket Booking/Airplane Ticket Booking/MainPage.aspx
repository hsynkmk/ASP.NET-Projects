<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Airplane_Ticket_Booking.Anasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/style.css" />
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
        <div class="section ">
            <div class="container sectionContainer d-flex align-items-center justify-content-center">
                <div class="textSection">
                    <h1>LOOKING FOR THE BEST FLIGHT TICKET? HERE IT IS</h1>
                    <p>We offer all our facilities for a comfortable travel.</p>
                </div>
                <div class="inputSection">
                    <div class="radioContainer d-flex align-items-center">
                        <div class="radioItems d-flex align-items-center">
                            <asp:RadioButton ID="gidisdonus" runat="server" Text="Round-Trip" GroupName="yon" />
                        </div>
                        <div class="radioItems d-flex align-items-center">
                            <asp:RadioButton ID="tekyon" runat="server" Text="One direction" GroupName="yon" />
                        </div>
                    </div>
                    <div class="selectContainer d-flex align-items-center">
                        <div class="selectItems">
                            <label>FROM</label>
                            <asp:DropDownList ID="neredenDropDown" runat="server">
                                <asp:ListItem>Adana</asp:ListItem>
                                <asp:ListItem>Ankara</asp:ListItem>
                                <asp:ListItem>Antalya</asp:ListItem>
                                <asp:ListItem>İstanbul</asp:ListItem>
                                <asp:ListItem>İzmir</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="selectItems">
                            <label>TO</label>
                            <asp:DropDownList ID="nereyeDropDown" runat="server">
                                <asp:ListItem>Adana</asp:ListItem>
                                <asp:ListItem>Ankara</asp:ListItem>
                                <asp:ListItem>Antalya</asp:ListItem>
                                <asp:ListItem>İstanbul</asp:ListItem>
                                <asp:ListItem>İzmir</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="dateContainer d-flex align-items-center">
                        <div class="dateItems d-flex flex-column">
                            <label>DEPARTURE DATE</label>
                            <asp:TextBox ID="Gidistarihi" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="dateItems d-flex flex-column">
                            <label>DATE OF RETURN</label>
                            <asp:TextBox ID="DonusTarihi" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>
                    <div class="seferleriGosterContainer d-flex align-items-center ">
                        <asp:Button ID="seferGosterBtn" CssClass="seferleriGoster" runat="server" Text="SHOW EXHIBITIONS" OnClick="seferGosterBtn_Click" />
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </form>

</body>
</html>
