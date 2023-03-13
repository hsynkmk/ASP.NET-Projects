<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Credit_Card_Verification.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-image: url('https://cdn.pixabay.com/photo/2018/09/21/07/44/buy-3692490_960_720.jpg');
            background-attachment: fixed;
            background-size: cover;
        }

        form {
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .info-label {
            text-align: center;
            color: red;
        }

        .payment-container {
            width: 400px;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
        }

        .label {
            font-weight: bold;
            display: block;
            margin-top: 6px;
            color: #333;
        }

        #SubmitButton {
            display: block;
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background: #5cb85c;
            color: #fff;
            font-size: 18px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

            #SubmitButton:hover {
                background: #4cae4c;
            }

        .TextBox,
        .Dropdown {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 7px;
            border-radius: 5px;
            background: #f5f5f5;
            margin-bottom: 5px;
            font-size: 16px;
            color: #333;
        }

        .card-details {
            display: flex;
            justify-content: space-between;
        }

            .card-details Dropdown {
                width: 48%;
                margin-right: 4%;
            }

        .cardNoOnImage {
            font-weight: bold;
            font-size: 26px;
            padding: 20px;
            text-align: center;
            position: absolute;
            top: 75%;
            right: 50%;
            transform: translate(50%, -50%);
        }

        .CardImage {
            text-align: center;
            position: relative;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div class="payment-container">
            <h1>Save a Credit Card</h1>
            <form>

                <asp:Label ID="NameSurnameLabel" runat="server" Text="Name-Surname" CssClass="label"></asp:Label><br />
                <asp:TextBox ID="NameSurnameTextBox" runat="server" Width="260px" CssClass="TextBox"></asp:TextBox>

                <asp:Label ID="CardNoLabel" runat="server" Text="Card No" CssClass="label"></asp:Label><br />
                <asp:TextBox ID="CardNoTextBox" runat="server" CssClass="TextBox" Width="260px" OnTextChanged="CardNoTextBox_TextChanged" AutoPostBack="True"></asp:TextBox>

                <asp:Image ID="imgCard" runat="server" Width="38px" />

                <div class="card-details">
                    <div>
                        <asp:Label ID="MonthLabel" runat="server" Text="Month" CssClass="label"></asp:Label><br />
                        <asp:DropDownList ID="MonthDropDownList" runat="server" Width="152px" CssClass="Dropdown">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div>
                        <asp:Label ID="YearLabel" runat="server" Text="Year" CssClass="label"></asp:Label><br />
                        <asp:DropDownList ID="YearDropDownList" runat="server" Width="152px" CssClass="Dropdown">
                            <asp:ListItem>2024</asp:ListItem>
                            <asp:ListItem>2025</asp:ListItem>
                            <asp:ListItem>2026</asp:ListItem>
                            <asp:ListItem>2027</asp:ListItem>
                            <asp:ListItem>2028</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                </div>

                <asp:Label ID="CVCLabel" runat="server" Text="CVC" CssClass="label"></asp:Label><br />
                <asp:TextBox ID="CVCTextBox" runat="server" CssClass="TextBox" Width="105px"></asp:TextBox>

                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" /><br />
                <asp:Label ID="InfoLabel" runat="server" CssClass="info-label"></asp:Label>
                <div class="CardImage">
                    <asp:Image ID="Image1" runat="server" Height="172px" ImageUrl="https://cdn.pixabay.com/photo/2012/04/01/12/42/credit-card-23250_960_720.png" Width="291px" />
                    <div>
                        <asp:Label ID="CardNoOnImage" runat="server" CssClass="cardNoOnImage"></asp:Label>
                    </div>
                </div>
            </form>
        </div>

        &nbsp;
                
    </form>

</body>
</html>
