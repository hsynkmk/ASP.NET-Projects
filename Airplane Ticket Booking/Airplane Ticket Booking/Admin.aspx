<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Airplane_Ticket_Booking.YoneticiPaneli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <form id="form1" autocomplete="off" runat="server">
        <div>
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
            <div class="section d-flex align-items-center justify-content-center" style="flex-direction: column !important; margin-top: 20px; padding-bottom: 50px">
                <div class="yonetici-container d-flex align-items-start justify-content-center flex-column">
                    <div class="d-flex align-items-center yonetici-panel-item ">
                        <asp:Label ID="Label1" runat="server" Text="Kalkış Yeri"></asp:Label>
                        <asp:DropDownList ID="kalkisYeriDropDown" runat="server">
                        </asp:DropDownList>
                    </div>
                    <div class="d-flex align-items-center yonetici-panel-item ">
                        <asp:Label ID="Label2" runat="server" Text="Varış Yeri"></asp:Label>
                        <asp:DropDownList ID="varisYeriDropdown" runat="server">
                        </asp:DropDownList>
                    </div>
                    <asp:Label ID="Label3" runat="server" Text="Tarih:" CssClass="yonetici-panel-tarih"></asp:Label>
                    <asp:Calendar ID="seferTarihi" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" CssClass="yonetici-tarih">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                    <div class="yonetici-panel-item d-flex align-items-center">
                        <asp:Label ID="Label4" runat="server" Text="Kalkış Saati"></asp:Label>
                        <asp:TextBox Style="width: 100px;" ID="kalkisSaatiTextbox" runat="server"></asp:TextBox>
                    </div>
                    <div class="d-flex align-items-center yonetici-panel-item">
                        <asp:CheckBox ID="gidisDonusCheckbox" runat="server" Text="Gidiş-Dönüş" />
                    </div>
                    <div class="d-flex align-items-center yonetici-panel-item">
                        <asp:Label ID="Label5" runat="server" Text="Ücret"></asp:Label>
                        <asp:TextBox Style="width: 100px; margin-left: 50px;" ID="ucretTextBox" runat="server"></asp:TextBox>
                    </div>
                    <asp:Button Style="margin-left: 50px;" ID="Button1" runat="server" OnClick="Button1_Click" Text="Sefer Oluştur" Width="118px" CssClass="yonetici-panel-button" />
                </div>
                <div style="margin-top: 10px">
                    <h1 style="color: white">Kayıtlı Seferler</h1>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SeferDs" Height="160px" OnRowCommand="GridView1_RowCommand" Width="1053px">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="KalkisYeri" HeaderText="KalkisYeri" SortExpression="KalkisYeri" />
                            <asp:BoundField DataField="VarisYeri" HeaderText="VarisYeri" SortExpression="VarisYeri" />
                            <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="KalkisSaati" HeaderText="KalkisSaati" SortExpression="KalkisSaati" />
                            <asp:BoundField DataField="GidisDonus" HeaderText="GidisDonus" SortExpression="GidisDonus" />
                            <asp:BoundField DataField="Ucret" HeaderText="Ucret" SortExpression="Ucret" />
                            <asp:CommandField ShowDeleteButton="True" DeleteText="Sefer Sil" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SeferDs" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=OtobusRezervasyonSistemi;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ID], [VarisYeri], [KalkisYeri], CONVERT( date,[Tarih] ) as 'Tarih' , [KalkisSaati], [GidisDonus], [Ucret] FROM [Sefer]"></asp:SqlDataSource>

                </div>
                <div style="margin-top: 10px">
                    <h1 style="color: white">Rezervasyonlar</h1>
                    <asp:GridView ID="rezTablosu" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="RezDS" OnRowCommand="rezTablosu_RowCommand" Width="1048px" OnRowEditing="rezTablosu_RowEditing">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="YolcuTC" HeaderText="YolcuTC" SortExpression="YolcuTC" />
                            <asp:BoundField DataField="SeferID" HeaderText="SeferID" SortExpression="SeferID" />
                            <asp:BoundField DataField="Koltuk" HeaderText="Koltuk" SortExpression="Koltuk" />
                            <asp:BoundField DataField="RezervasyonTarihi" HeaderText="RezervasyonTarihi" SortExpression="RezervasyonTarihi" />
                            <asp:CommandField ShowDeleteButton="True" DeleteText="Rezervasyonu Sil" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="RezDS" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=OtobusRezervasyonSistemi;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Rezervasyon]"></asp:SqlDataSource>

                </div>
            </div>


        </div>
    </form>
</body>
</html>
