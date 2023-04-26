<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductInfo.aspx.cs" Inherits="Shopping_Website.ProductInfo" %>

<%@ Import Namespace="Shopping_Website" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Shopping Website</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="Default.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Cart.aspx">Cart</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>Product Information</h2>
                </div>
                <div class="col-md-6 text-right">
                    <a href="Default.aspx" class="btn btn-primary">Return to Main Page</a>
                    <a href="Cart.aspx" class="btn btn-success">Go to Cart</a>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-4">
                    <asp:Image ID="Image1" class="img-thumbnail" runat="server" />
                </div>
                <div class="col-md-8">
                    <h3>
                        <asp:Label ID="lblName" runat="server" /></h3>
                    <hr />
                    <p>
                        <asp:Label ID="lblDescription" runat="server" /></p>
                    <hr />
                    <p><strong>Price:</strong> <asp:Label ID="lblPrice" runat="server" /></p>
                    <hr />
                    <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CssClass="btn btn-primary" OnClick="btnAddToCart_Click" />
                    <asp:Label ID="lblCartStatus" runat="server" CssClass="text-success" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
