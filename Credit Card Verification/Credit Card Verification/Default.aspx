<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Credit_Card_Verification.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>
    <style>
        div {
            text-align: center;
            padding-top: 50px;
            font-family: Arial;
        }

        #SubmitButton {
            background-color: #44c767;
            border-radius: 16px;
            display: inline-block;
            cursor: pointer;
            color: #ffffff;
            font-family: Arial;
            font-size: 21px;
            padding: 14px 23px;
            text-decoration: none;
        }

            #SubmitButton:hover {
                background-color: #799669;
            }

            #SubmitButton:active {
                position: relative;
                top: 1px;
            }


        .Dropdown {
            border-radius: 16px;
        }

        .TextBox {
            padding: 0;
            height: 30px;
            position: relative;
            left: 0;
            outline: none;
            border: 1px solid #cdcdcd;
            border-color: rgba(0, 0, 0, .15);
            background-color: white;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <asp:Label ID="NameSurnameLabel" runat="server" Text="Kart Üzerindeki Ad Soyad"></asp:Label><br />
            <asp:TextBox ID="NameSurnameTextBox" runat="server" Width="219px" CssClass="TextBox"></asp:TextBox>
            <p>
                <asp:Label ID="CardNoLabel" runat="server" Text="Kart Numarası"></asp:Label><br />
                <asp:TextBox ID="CardNoTextBox" runat="server" CssClass="TextBox"></asp:TextBox>
            </p>
            <asp:Label ID="MonthLabel" runat="server" Text="Ay"></asp:Label><br />
            <asp:DropDownList ID="MonthDropDownList" runat="server" Width="159px" CssClass="Dropdown">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
            </asp:DropDownList>
            <p>
                <asp:Label ID="YearLabel" runat="server" Text="Yıl"></asp:Label><br />
                <asp:DropDownList ID="YearDropDownList" runat="server" Width="152px" CssClass="Dropdown">
                    <asp:ListItem>2024</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <asp:Label ID="CVCLabel" runat="server" Text="CVC"></asp:Label><br />
                <asp:TextBox ID="CVCTextBox" runat="server" CssClass="TextBox"></asp:TextBox>
            </p>
            <asp:Button ID="SubmitButton" runat="server" Text="Onay" OnClick="SubmitButton_Click" /><br />
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </div>
        <p>
            &nbsp;
                <asp:Image ID="imgCard" runat="server" Width="38px" />
        </p>
    </form>
</body>
</html>
