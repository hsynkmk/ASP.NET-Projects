<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Job_Portal.SignUp1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('./images/back.jpg');">
        <br />
        <div class="page" style="height: 800px;">
            <div class="back-img" style="height: 160px;">
                <div class="sign-in-text" style="top: 80px;">
                    <h2 class="active">Sign Up</h2>
                </div>
                <div class="layer">
                </div>

            </div>
            <div class="form">
                <asp:Label ID="Label10" class="LoLabel" runat="server" Text="Email :"></asp:Label>
                <asp:TextBox ID="EmailTB" TextMode="Email" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Font-Size="Smaller" ErrorMessage="*Email is Required Field " ControlToValidate="EmailTB" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label11" class="LoLabel" runat="server" Text="Password :"></asp:Label>
                <asp:TextBox ID="PasswordTB" TextMode="Password" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Font-Size="Smaller" ErrorMessage="*Password is Required Field " ControlToValidate="PasswordTB" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label1" class="LoLabel" runat="server" Text="FirstName :"></asp:Label>
                <asp:TextBox ID="FirstNameTB" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="Smaller" ErrorMessage="*Firstname is Required Field " ControlToValidate="FirstNameTB" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label2" class="LoLabel" runat="server" Text="LastName :"></asp:Label>
                <asp:TextBox ID="LastNameTB" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Font-Size="Smaller" ErrorMessage="*Last name is Required Field " ControlToValidate="LastNameTB" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label3" class="LoLabel" runat="server" Text="Address :"></asp:Label>
                <asp:TextBox ID="AddressTB" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Font-Size="Smaller" ErrorMessage="*Required Field " ControlToValidate="AddressTB" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator><br />
                <asp:Label ID="Label4" class="LoLabel" runat="server" Text="Mobile Number :"></asp:Label>
                <asp:TextBox ID="PhoneTB" TextMode="Phone" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Font-Size="Smaller" ErrorMessage="*Required Field " ControlToValidate="PhoneTB" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label5" class="LoLabel" runat="server" Text="Gender :"></asp:Label>
                <asp:RadioButtonList ID="GenderRadBtnL" ForeColor="#2b2b2b" Font-Bold="true" runat="server" >
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Font-Size="Smaller" ErrorMessage="*Gender is Required Field " ControlToValidate="GenderRadBtnL" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:Label ID="Label7" class="LoLabel" runat="server" Text="Abilities :"></asp:Label>
                <asp:TextBox ID="AbltTB" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Font-Size="Smaller" ErrorMessage="*Abilities is Required Field " ControlToValidate="AbltTB" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <br />

                <br />
           
                <asp:Button ID="SingUpBTN" CssClass="btn1" runat="server" Text="Sign Up" OnClick="SingUpBTN_Click"  />
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
