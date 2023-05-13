<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Expeditions.aspx.cs" Inherits="Airplane_Ticket_Booking.Expeditions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
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
        <div class="plane">
            <div class="cockpit">
                <h1>Please select a seat</h1>
            </div>
            <div class="exit exit--front fuselage">
            </div>
            <ol class="cabin fuselage">
                <li class="row row--1">
                    <ol class="seats" type="A">
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox1A" runat="server" />
                            <asp:Label ID="Label1A" runat="server" Text="1A"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox1B" runat="server" />
                            <asp:Label ID="Label1B" runat="server" Text="1B"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox1C" runat="server" />
                            <asp:Label ID="Label1C" runat="server" Text="1C"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox1D" runat="server" />
                            <asp:Label ID="Label1D" runat="server" Text="1D"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox1E" runat="server" />
                            <asp:Label ID="Label1E" runat="server" Text="1E"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox1F" runat="server" />
                            <asp:Label ID="Label1F" runat="server" Text="1F"></asp:Label>
                        </li>
                    </ol>
                </li>

                <li class="row row--2">
                    <ol class="seats" type="A">
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox2A" runat="server" />
                            <asp:Label ID="Label2A" runat="server" Text="2A"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox2B" runat="server" />
                            <asp:Label ID="Label2B" runat="server" Text="2B"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox2C" runat="server" />
                            <asp:Label ID="Label2C" runat="server" Text="2C"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox2D" runat="server" />
                            <asp:Label ID="Label2D" runat="server" Text="2D"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox2E" runat="server" />
                            <asp:Label ID="Label2E" runat="server" Text="2E"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox2F" runat="server" />
                            <asp:Label ID="Label2F" runat="server" Text="2F"></asp:Label>
                        </li>
                    </ol>
                </li>
                <li class="row row--3">
                    <ol class="seats" type="A">
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox3A" runat="server" />
                            <asp:Label ID="Label3A" runat="server" Text="3A"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox3B" runat="server" />
                            <asp:Label ID="Label3B" runat="server" Text="3B"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox3C" runat="server" />
                            <asp:Label ID="Label3C" runat="server" Text="3C"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox3D" runat="server" />
                            <asp:Label ID="Label3D" runat="server" Text="3D"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox3E" runat="server" />
                            <asp:Label ID="Label3E" runat="server" Text="3E"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox3F" runat="server" />
                            <asp:Label ID="Label3F" runat="server" Text="3F"></asp:Label>
                        </li>
                    </ol>
                </li>
                <li class="row row--4">
                    <ol class="seats" type="A">
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox4A" runat="server" />
                            <asp:Label ID="Label4A" runat="server" Text="4A"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox4B" runat="server" />
                            <asp:Label ID="Label4B" runat="server" Text="4B"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox4C" runat="server" />
                            <asp:Label ID="Label4C" runat="server" Text="4C"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox4D" runat="server" />
                            <asp:Label ID="Label4D" runat="server" Text="4D"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox4E" runat="server" />
                            <asp:Label ID="Label4E" runat="server" Text="4E"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox4F" runat="server" />
                            <asp:Label ID="Label4F" runat="server" Text="4F"></asp:Label>
                        </li>
                    </ol>
                </li>
                <li class="row row--5">
                    <ol class="seats" type="A">
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox5A" runat="server" />
                            <asp:Label ID="Label5A" runat="server" Text="5A"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox5B" runat="server" />
                            <asp:Label ID="Label5B" runat="server" Text="5B"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox5C" runat="server" />
                            <asp:Label ID="Label5C" runat="server" Text="5C"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox5D" runat="server" />
                            <asp:Label ID="Label5D" runat="server" Text="5D"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox5E" runat="server" />
                            <asp:Label ID="Label5E" runat="server" Text="5E"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox5F" runat="server" />
                            <asp:Label ID="Label5F" runat="server" Text="5F"></asp:Label>
                        </li>
                    </ol>
                </li>
                <li class="row row--6">
                    <ol class="seats" type="A">
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox6A" runat="server" />
                            <asp:Label ID="Label6A" runat="server" Text="6A"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox6B" runat="server" />
                            <asp:Label ID="Label6B" runat="server" Text="6B"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox6C" runat="server" />
                            <asp:Label ID="Label6C" runat="server" Text="6C"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox6D" runat="server" />
                            <asp:Label ID="Label6D" runat="server" Text="6D"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox6E" runat="server" />
                            <asp:Label ID="Label6E" runat="server" Text="6E"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox6F" runat="server" />
                            <asp:Label ID="Label6F" runat="server" Text="6F"></asp:Label>
                        </li>
                    </ol>
                </li>
                <li class="row row--7">
                    <ol class="seats" type="A">
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox7A" runat="server" />
                            <asp:Label ID="Label7A" runat="server" Text="7A"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox7B" runat="server" />
                            <asp:Label ID="Label7B" runat="server" Text="7B"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox7C" runat="server" />
                            <asp:Label ID="Label7C" runat="server" Text="7C"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox7D" runat="server" />
                            <asp:Label ID="Label7D" runat="server" Text="7D"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox7E" runat="server" />
                            <asp:Label ID="Label7E" runat="server" Text="7E"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox7F" runat="server" />
                            <asp:Label ID="Label7F" runat="server" Text="7F"></asp:Label>
                        </li>
                    </ol>
                </li>
                <li class="row row--8">
                    <ol class="seats" type="A">
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox8A" runat="server" />
                            <asp:Label ID="Label8A" runat="server" Text="8A"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox8B" runat="server" />
                            <asp:Label ID="Label8B" runat="server" Text="8B"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox8C" runat="server" />
                            <asp:Label ID="Label8C" runat="server" Text="8C"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox8D" runat="server" />
                            <asp:Label ID="Label8D" runat="server" Text="8D"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox8E" runat="server" />
                            <asp:Label ID="Label8E" runat="server" Text="8E"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox8F" runat="server" />
                            <asp:Label ID="Label8F" runat="server" Text="8F"></asp:Label>
                        </li>
                    </ol>
                </li>
                <li class="row row--9">
                    <ol class="seats" type="A">
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox9A" runat="server" />
                            <asp:Label ID="Label9A" runat="server" Text="9A"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox9B" runat="server" />
                            <asp:Label ID="Label9B" runat="server" Text="9B"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox9C" runat="server" />
                            <asp:Label ID="Label9C" runat="server" Text="9C"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox9D" runat="server" />
                            <asp:Label ID="Label9D" runat="server" Text="9D"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox9E" runat="server" />
                            <asp:Label ID="Label9E" runat="server" Text="9E"></asp:Label>
                        </li>
                        <li class="seat">
                            <asp:CheckBox ID="CheckBox9F" runat="server" />
                            <asp:Label ID="Label9F" runat="server" Text="9F"></asp:Label>
                        </li>
                    </ol>
                </li>
            </ol>
                <div class="exit exit--back fuselage">
                </div>
        </div>


        <div class="text-center m-5">
            <asp:Button ID="MakeReservationBtn" CssClass="btn btn-success" runat="server" Text="Make Reservation" OnClick="MakeReservationBtn_Click" />
        </div>
    </form>

</body>
</html>
