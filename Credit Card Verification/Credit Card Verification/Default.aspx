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
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-image: url('https://cdn.pixabay.com/photo/2018/09/21/07/44/buy-3692490_960_720.jpg');
            background-attachment: fixed;
            background-size: cover;
        }

        h1 {
            text-align: center;
        }

        form {
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .paymentContainer {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
        }

        .label {
            font-weight: bold;
            display: block;
            margin-top: 6px;
            color: #333;
        }

        .textBox,
        .Dropdown {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 7px;
            border-radius: 5px;
            background: #f5f5f5;
            margin-bottom: 10px;
            font-size: 16px;
            color: #333;
        }

        .cardDetails {
            display: flex;
            justify-content: space-between;
        }

            .cardDetails Dropdown {
                width: 48%;
                margin-right: 4%;
            }

        #submitButton {
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

        .cardImage {
            width: 50%;
            float: left;
            padding: 20px;
            position: relative;
        }


        .nameOnImage {
            font-size: 20px;
            font-weight: bold;
            text-align: left;
            position: absolute;
            top: 40%;
            right: 42%;
            transform: translate(50%, -50%);
        }

        .cardNoOnImage {
            font-weight: bold;
            font-size: 24px;
            padding: 20px;
            text-align: left;
            position: absolute;
            top: 60%;
            right: 50%;
            transform: translate(50%, -50%);
        }

        .exDateOnImage {
            font-weight: bold;
            font-size: 20px;
            padding: 20px;
            text-align: left;
            position: absolute;
            top: 75%;
            right: 75%;
            transform: translate(50%, -50%);
        }

        .cardTypeImg {
            padding: 10px;
            text-align: right;
            position: absolute;
            top: 68%;
            right: 7%;
        }

        .infoLabel {
            text-align: center;
            color: red;
        }
    </style>


</head>
<body>
    <form class="paymentContainer" id="form1" runat="server">
        <div>
            <h1>Save a Credit Card</h1>

            <div class="cardImage">
                <div>
                    <asp:Image ID="cardTemplateImg" runat="server" Height="215px" ImageUrl="https://t4.ftcdn.net/jpg/01/47/93/11/240_F_147931159_ryJYRNxSWGf2Ub8YSz9v5DLCF1ki7jWo.jpg" Width="315px" />
                </div>
                <div>
                    <asp:Label ID="nameOnImg" runat="server" CssClass="nameOnImage"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="cardNoOnImage" runat="server" CssClass="cardNoOnImage"></asp:Label>
                </div>
                <div class="cardTypeImg">
                    <asp:Image ID="imgCard" runat="server" Width="38px" />
                </div>
                <div>
                    <asp:Label ID="exDateOnImg" runat="server" CssClass="exDateOnImage"></asp:Label>
                </div>
            </div>
            <div class="cardImage">
                <asp:Label ID="NameSurnameLabel" runat="server" Text="Name-Surname" CssClass="label"></asp:Label>
                <asp:TextBox ID="nameSurnameTextBox" runat="server" Width="260px" CssClass="textBox" AutoPostBack="True" OnTextChanged="NameSurnameTextBox_TextChanged"></asp:TextBox>

                <asp:Label ID="CardNoLabel" runat="server" Text="Card No" CssClass="label"></asp:Label>
                <asp:TextBox ID="cardNoTextBox" runat="server" CssClass="textBox" Width="260px" OnTextChanged="CardNoTextBox_TextChanged" AutoPostBack="True"></asp:TextBox>



                <div class="cardDetails">
                    <div>
                        <asp:Label ID="MonthLabel" runat="server" Text="Month" CssClass="label"></asp:Label>
                        <asp:DropDownList ID="monthDropDownList" runat="server" Width="129px" CssClass="Dropdown" AutoPostBack="True" OnSelectedIndexChanged="MonthDropDownList_SelectedIndexChanged">
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
                        <asp:Label ID="YearLabel" runat="server" Text="Year" CssClass="label"></asp:Label>
                        <asp:DropDownList ID="yearDropDownList" runat="server" Width="129px" CssClass="Dropdown" AutoPostBack="True" OnSelectedIndexChanged="YearDropDownList_SelectedIndexChanged">
                            <asp:ListItem>2024</asp:ListItem>
                            <asp:ListItem>2025</asp:ListItem>
                            <asp:ListItem>2026</asp:ListItem>
                            <asp:ListItem>2027</asp:ListItem>
                            <asp:ListItem>2028</asp:ListItem>
                            <asp:ListItem>2029</asp:ListItem>
                            <asp:ListItem>2030</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                </div>

                <asp:Label ID="CVCLabel" runat="server" Text="CVC" CssClass="label"></asp:Label>
                <asp:TextBox ID="cvcTextBox" runat="server" CssClass="textBox" Width="105px"></asp:TextBox>

                <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                <asp:Label ID="infoLabel" runat="server" CssClass="infoLabel"></asp:Label>

            </div>
        </div>

        &nbsp;
               
    </form>

</body>
</html>
