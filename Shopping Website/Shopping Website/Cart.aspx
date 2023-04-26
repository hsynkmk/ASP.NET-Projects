<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Shopping_Website.Cart" %>

<%@ Import Namespace="Shopping_Website" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style>
        nav {
            margin-bottom: 20px;
        }

        img {
            width: 100px;
            height: 120px;
            text-align: center;
        }


        .btn {
            margin-top: 20px;
        }
    </style>
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
                <div class="col-sm-12">
                    <h1>Shopping Cart</h1>
                    <hr />
                    <% if (Session["Cart"] == null)
                        { %>
                    <h4>Your cart is empty.</h4>
                    <% }
                        else
                        { %>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th></th>
                                <th>Product Name</th>
                                <th>Price</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <% ArrayList selectedProducts = (ArrayList)Session["Cart"];
                                List<Product> productList = (List<Product>)Session["Products"];
                                foreach (int productId in selectedProducts)
                                {
                                    Product product = productList.Find(p => p.ProductID == productId);
                                    if (product != null)
                                    { %>
                            <tr>
                                <td>
                                    <img src="<%= product.ProductImage %>" alt="<%= product.ProductName %>" /></td>
                                <td><%= product.ProductName %></td>
                                <td>$<%= product.ProductPrice.ToString("0.00") %></td>
                                <td><a href="ProductInfo.aspx?id=<%= product.ProductID %>">View</a></td>
                            </tr>
                            <% }
                                } %>
                        </tbody>
                    </table>
                    <% } %>
                    <a href="Default.aspx" class="btn btn-primary">Return to main page</a>
                    <a href="Default.aspx" class="btn btn-primary">CHECKOUT</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
