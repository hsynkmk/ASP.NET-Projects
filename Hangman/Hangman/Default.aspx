<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Hangman.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hangman Game</title>
    <!-- Link to Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Hangman Game</h1>
            <asp:Button ID="StartBtn" runat="server" OnClick="StartBtn_Click" Text="Start" />
            <div runat="server" id="playzone" class="row">
                <div class="col-md-6">
                    <h3>Guess a Letter:</h3>
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

            <asp:TextBox runat="server" ID="Word"></asp:TextBox>
            <asp:TextBox runat="server" ID="Hint"></asp:TextBox>
            <asp:Button ID="AddWordBtt" runat="server" Text="Ekle" OnClick="AddWordBtt_Click" />

            <asp:Label ID="Infolbl" runat="server"></asp:Label>

        </div>


    </form>
</body>

</html>
