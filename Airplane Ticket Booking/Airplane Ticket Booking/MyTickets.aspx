<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyTickets.aspx.cs" Inherits="Airplane_Ticket_Booking.Biletlerim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/style.css" />
        <style>
        .tableContainer {
            border-radius: 10px;
            box-shadow: 10px 10px 10px 10px rgba(0, 0.3, 0.3, 0.3);
            width: auto;
            margin: auto;
            padding: 30px;
            margin-top: 10px;
        }

        .gridView {
            width: 100%;
            text-align: center;
            margin: 0 auto;
        }
    </style>
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
        <div class="tableContainer">
            <h1 style="color: white">My Tickets</h1>
            <asp:GridView ID="TicketsGridView" runat="server" CellPadding="2" ForeColor="Blue" GridLines="None" CssClass="gridView" BackColor="#666666" BorderColor="Tan" BorderWidth="1px" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="BookingID" HeaderText="BookingID" />
                    <asp:BoundField DataField="PassengerID" HeaderText="PassengerID" />
                    <asp:BoundField DataField="PassenderSeatNum" HeaderText="Seat Number" />
                    <asp:BoundField DataField="PassengerName" HeaderText="Passenger Name" />
                    <asp:BoundField DataField="PassengerSurname" HeaderText="Passenger Surname" />
                    <asp:BoundField DataField="PassengerPhone" HeaderText="Phone" />
                    <asp:BoundField DataField="DeparturePoint" HeaderText="DeparturePoint" />
                    <asp:BoundField DataField="Destination" HeaderText="Destination" />
                    <asp:BoundField DataField="Date" HeaderText="Date" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                </Columns>
                <AlternatingRowStyle BackColor="#333333" />

                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="Black" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
