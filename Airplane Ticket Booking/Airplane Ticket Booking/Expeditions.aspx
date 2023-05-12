<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Expeditions.aspx.cs" Inherits="Airplane_Ticket_Booking.Expeditions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
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
        <asp:GridView ID="seferTablosu" runat="server" Width="100%" BackColor="red" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="seferTablosu_SelectedIndexChanged" OnRowCommand="seferTablosu_RowCommand" CssClass="table">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" VerticalAlign="Middle" />
            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="RezervasyonBtn" Text="Rezervason Yap" runat="server" OnClick="RezervasyonBtn_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SeferlerData" runat="server"></asp:SqlDataSource>
        <asp:EntityDataSource ID="SeferlerEntity" runat="server">
        </asp:EntityDataSource>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


    </form>

</body>
</html>
