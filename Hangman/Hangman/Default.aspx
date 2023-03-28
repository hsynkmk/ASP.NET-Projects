<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Hangman.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hangman Game</title>
    <!-- Link to Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <style>
        body {
            background-image: url('/Images/Backround0.jpg');
            background-attachment: fixed;
            background-size: cover;
        }

        .btn-letter {
            font-size: 24px;
            width: 50px;
            height: 50px;
            margin: 5px;
        }

            .btn-letter:hover {
                background-color: #f1f1f1;
            }

        #Image1 {
            text-align: right;
        }

        .margin-bottom {
            margin-bottom: 6em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="text-center">
                <h1>Adam Asmaca</h1>
                <asp:Button class="btn btn-success btn-lg margin-bottom" ID="StartBtn" runat="server" OnClick="StartBtn_Click" Text="Başla" />
                <div>
                    <asp:Label ID="Infolbl" runat="server" Font-Size="X-Large"></asp:Label>
                </div>

            </div>
            <div runat="server" id="playzone" class="row">
                <div class="col-md-6">
                    <h3 runat="server" id="displayhint"></h3>
                    <div class="btn-group btn-group-lg pull-right" role="group">
                        <!-- Buttons for each letter in the alphabet -->
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="A" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="B" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="C" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="Ç" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="D" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="E" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="F" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="G" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="Ğ" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="H" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="I" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="İ" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="J" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="K" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="L" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="M" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="N" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="O" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="Ö" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="P" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="R" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="S" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="Ş" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="T" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="U" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="Ü" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="V" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="Y" OnClick="LetterButton_Click" />
                        <asp:Button runat="server" CssClass="btn btn-primary btn-letter" Text="Z" OnClick="LetterButton_Click" />
                    </div>
                </div>

                <div>
                    <asp:Label ID="lblWord" runat="server" Text="" Font-Size="X-Large" />
                </div>
                <div style="text-align: right;">
                    <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/Images/0.jpg" />
                </div>
            </div>

            <div class="text-center">
                <asp:Button class="btn btn-warning" ID="AddItem" runat="server" Text="Yeni Kelime Ekle" OnClick="AddItemBtn_Click" />
                <div runat="server" id="newWordZone" class="row">
                    <div class="col-md-6">
                        <asp:TextBox type="text" class="form-control mb-2" runat="server" ID="Word" placeholder="Kelime"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox type="text" class="form-control mb-2" runat="server" ID="Hint" placeholder="İpucu"></asp:TextBox>
                    </div>
                    <div class="col-md-12 text-center">
                        <asp:Button class="btn btn-primary" ID="AddWordBtn" runat="server" Text="Ekle" OnClick="AddWordBtn_Click" />
                    </div>
                </div>
            </div>





            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div style="padding: 25px">

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="txtCount" runat="server"
                            Height="42px"
                            Width="80px"
                            Font-Size="XX-Large"
                            Text=""
                            Style="text-align: center">
                        </asp:Label>
                        <br />

                        <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <br />
            </div>
        </div>
    </form>
</body>

</html>
