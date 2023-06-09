<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Job_Portal.Login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('./images/back.jpg');">
        <br />
        <div class="page">
            <div class="back-img">
                <div class="sign-in-text">
                    <h2 class="text-bold active">Sign In</h2>
                </div>

            </div>
            <div class="form">
                <asp:Label class="LoLabel" runat="server" Text="Email "></asp:Label>
                <asp:TextBox ID="EmailTB" TextMode="Email" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Email is Required Field " ValidationGroup="login" ControlToValidate="EmailTB" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label class="LoLabel" runat="server" Text="Password "></asp:Label>
                <asp:TextBox ID="PasswordTB" TextMode="Password" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Password Required Field " ValidationGroup="login" ControlToValidate="PasswordTB" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                &nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
                <asp:Button ID="SignInBTN" CssClass="btn1" runat="server" Text="SIGN IN" OnClick="SignInBTN_Click" ValidationGroup="login"  />
                <br />
                <asp:Label class="LoLabel" runat="server" Text="Don't have an account? "></asp:Label>
                <asp:Button ID="SignUpBTN" CssClass="btn2" runat="server" PostBackUrl="~/SignUp.aspx" Text="SIGN UP" />
                <br />
                <br />
            </div>
        </div>
        <br />
    </div>


    <style>
        .page {
            position: relative;
            height: 650px;
            width: 500px;
            margin: auto;
            box-shadow: 0px 30px 125px -5px #000;
        }

        .back-img {
            position: relative;
            width: 100%;
            height: 250px;
            background: url('images/head.jpg')no-repeat center center;
            background-size: cover;
        }

        .active {
            padding-left: 25px;
            color: #fff;
        }

        h2 {
            padding-left: 15px;
            font-size: 35px;
            text-transform: uppercase;
            display: inline-block;
            font-weight: 300;
            text-shadow:0px 0px 5px #000;
        }

        .sign-in-text {
            top: 175px;
            position: absolute;
            z-index: 1;
        }

        .layer {
            background-color: rgba(33, 150, 243, 0.5);
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        .point {
            position: absolute;
            z-index: 1;
            color: #fff;
            top: 235px;
            padding-left: 50px;
            font-size: 20px;
        }

        .form {
            padding: 70px 90px 70px 90px;
        }

        .btn1 {
            width: 100%;
            height: 75px;
            position: absolute;
            bottom: 0;
            left: 0px;
            color: white;
            border: none;
            border-radius: 0px;
            background-color: rgba(63, 78, 191, 1);
        }

        .btn2 {
            background-color: #00cccc;
            width: 100px;
            height: 40px;
            margin-left: 10px;
            border: none;
            color: white;
            font-weight: 600;
            font-size: 15px;
        }

        .LoLabel {
            font-size: 15px;
            font-weight: 600;
            color:#2b2b2b;
        }

        .LoTextBox {
            border: none;
            border-bottom: 1px solid lightgrey;
            margin-bottom: 10px;
        }
    </style>
</asp:Content>
