<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="Airplane_Ticket_Booking.Hakkımızda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/style.css" />
    <style>
        #section {
            color: white;
            font-size: 20px;
            margin-top: 10px;
        }

        img {
            margin: 50px;
            border-radius: 10px;
        }

        h1 {
            text-align: center;
        }
    </style>
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

        <div id="section" style="color: white;">
            <h1>About Us</h1>
            <br />
            <img id="imgid" src="img/airplane.jpg" alt="Alternate Text" style="float: left;" />
            <p>
                Welcome to our flight ticket website! We are a team of dedicated travel enthusiasts who are passionate about making travel accessible and affordable for everyone. With years of experience in the travel industry, we have built a platform that allows you to easily search and compare flight options from multiple airlines, so you can find the best deals for your next adventure.
           
            </p>
            <br />
            <hr />
            <p>
                We understand that travel can be stressful, which is why we have designed our website to be user-friendly and intuitive, with a focus on providing you with all the information you need to make informed decisions. Whether you are a frequent traveler or planning your first trip.
                <br />
                We are committed to providing you with a seamless booking experience and exceptional customer service. Our mission is to help you explore the world and create unforgettable memories, without breaking the bank. So, whether you are traveling for business or pleasure, we invite you to book your next flight with us and experience the convenience and affordability of our flight ticket website. Thank you for choosing us as your travel partner, and happy travels!              
                <br />
                <br />
                It has brought numerous firsts and innovations to Turkey's passenger transport. With 10 years of experience, it understands today's passenger needs correctly and offers a high service quality in terms of personnel and equipment for passenger satisfaction. Today, we are among the 500 largest companies in Turkey.
           
            </p>

            <br />

        </div>
    </form>
</body>
</html>
