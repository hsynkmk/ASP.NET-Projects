﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Job_Portal.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet3.css" />
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="start">
            <div style="height: 103px">
                <asp:Label ID="Label6" runat="server" Text="JobSearch"></asp:Label>
                <nav>
                    <div class="container d-flex align-items-center">
                        <a href="Default.aspx">Home</a>
                        <a href="ContactUs.aspx">Contact Us</a>
                        <a id="signInHR" runat="server" href="LogIn.aspx">SignIn</a>
                        <a id="signUpHR" runat="server" href="SignUp.aspx">SignUp</a>
                        <asp:LinkButton ID="logOutBtn" runat="server" OnClick="logOutBtn_Click">LogOut</asp:LinkButton>
                        <asp:Label ID="welcomeLBL" Style="margin-left: 300px;" runat="server" Text="Welcome"></asp:Label>
                    </div>
                </nav>
            </div>
        </div>
        <div class="page" style="height: 800px;">
            <div class="back-img" style="height: 160px;">
                <div class="sign-in-text" style="top: 80px;">
                    <h2 class="active">Sign Up</h2>
                </div>
                <div class="layer">
                </div>
                <!--/.layer-->
                <p class="point">&#9650;</p>
            </div>
            <div class="form">
                <asp:Label ID="Label10" class="LoLabel" runat="server" Text="Email :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Email is Required Field " ControlToValidate="TextBox5" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label11" class="LoLabel" runat="server" Text="Password :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Password is Required Field " ControlToValidate="TextBox6" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label1" class="LoLabel" runat="server" Text="FirstName :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Firstname is Required Field " ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label2" class="LoLabel" runat="server" Text="LastName :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Last name is Required Field " ControlToValidate="TextBox2" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label3" class="LoLabel" runat="server" Text="Address :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required Field " ControlToValidate="TextBox3" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator><br />
                <asp:Label ID="Label4" class="LoLabel" runat="server" Text="Mobile Number :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Required Field " ControlToValidate="TextBox4" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label5" class="LoLabel" runat="server" Text="Gender :"></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Label ID="Label7" class="LoLabel" runat="server" Text="Abilities :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" class="LoTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Abilities is Required Field " ControlToValidate="TextBox7" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <br />

                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
                <asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                <br />
            </div>
        </div>
    </form>
</body>
</html>