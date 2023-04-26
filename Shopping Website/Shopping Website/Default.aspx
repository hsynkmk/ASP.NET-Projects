<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Shopping_Website.Default " %>

<%@ Import Namespace="Shopping_Website" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style>
        nav {
            margin-bottom: 20px;
        }

        .btn {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="Default.aspx">Shopping Website</a>
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
                <div class="col-md-3">
                    <%-- Panel for user info --%>
                    <asp:Panel ID="userInfoPanel" runat="server" Visible="true">
                        <h4>User Info</h4>
                        <hr />
                        <p>
                            <strong>Name:</strong>
                            <asp:Label ID="NameLabel" runat="server"></asp:Label>
                        </p>
                        <asp:Panel ID="loggedInPanel" runat="server">

                            <p><a href="Cart.aspx">View your cart</a></p>
                            <p>
                                <asp:Button ID="logoutButton" class="btn btn-primary" runat="server" Text="Logout" OnClick="LogoutButton_Click" />
                            </p>
                        </asp:Panel>
                        <asp:Panel ID="loggedOutPanel" runat="server">
                            <p>You are not logged in. <a href="Login.aspx">Login here</a>.</p>
                        </asp:Panel>

                    </asp:Panel>
                    <%-- Panel for login message --%>
                    <asp:Panel ID="loginPanel" runat="server" Visible="false">
                        <p>You are not logged in. Please <a href="Login.aspx">login</a>.</p>
                    </asp:Panel>
                </div>
                <div class="col-md-9">
                    <h2>Our Products</h2>
                    <hr />
                    <div class="row">
                        <%if (Request.Cookies["UserInfo"] != null)
                            {%>
                        <% foreach (Product product in Session["Products"] as List<Product>)
                            { %>
                        <div class="col-md-4">
                            <div class="card mb-2">
                                <img src="<%= product.ProductImage %>" class="card-img-top" alt="<%= product.ProductName %>" />
                                <div class="card-body">
                                    <h5 class="card-title"><%= product.ProductName %></h5>
                                    <p class="card-text">Price: $<%= product.ProductPrice %></p>
                                    <a href="ProductInfo.aspx?id=<%= product.ProductID %>" class="btn btn-primary">Details</a>
                                </div>
                            </div>
                        </div>
                        <% } %>
                        <%}%>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
