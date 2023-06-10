<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JobDetail.aspx.cs" Inherits="Job_Portal.JobDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('./images/apply.jpg'); background-size:contain">
        <br />
        <div class="container">
            <div class="card border-info mb-3" style="max-width: 50rem; background-color: rgba(255,255,255,0.7);">
                <asp:Repeater ID="Repeater" runat="server">
                    <ItemTemplate>
                        <div class="card-header">
                            <h2><%# Eval("Job") %></h2>
                        </div>
                        <div class="card-body">
                            <h4 class="card-title"><%# Eval("Company") %></h4>
                            <p class="card-text"><%# Eval("Description") %></p>
                            <p class="card-text"><strong>Location: </strong><%# Eval("Location") %></p>
                            <p class="card-text"><strong>Qualification: </strong><%# Eval("Qualification") %></p>
                            <p class="card-text"><strong>Experiance: </strong><%# Eval("Experiance") %></p>
                            <p class="card-text"><strong>Job-Type: </strong><%# Eval("Type") %></p>
                            <p class="card-text"><strong>Salary: </strong><%# Eval("Salary", "{0:C}") %></p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:Button ID="ApplyBTN" CssClass="btn btn-info btn-lg" OnClick="ApplyBTN_Click" runat="server" Text="Apply this job" />
            </div>
        </div>
        <br />
        <footer class="site-footer">
            <div class=" container ">
                <div class="row">
                    <div class="col">
                        <h6>About Us</h6>
                        <p class="text-justify">
                            JobSearch.com
                            <br />
                            With JobSearch, you can search millions of jobs online to find the next step in your career.
                            <br />
                            With tools for job search, resumes, company reviews and more, ...
                        </p>
                    </div>

                    <div class="col d-flex justify-content-center">
                        <div class="row">
                            <div class="col-md-12">
                                <h6>Categories</h6>
                            </div>
                            <div class="col">
                                <ul class="footer-links">
                                    <li class="nav-item"><a class="nav-link" href="#">Developer</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">UI Design</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Senior Manager</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Marketing Head</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Android</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Templates</a></li>
                                </ul>
                            </div>
                        </div>


                    </div>

                    <div class="col d-flex justify-content-center">
                        <div class="row">
                            <div class="col-md-12">
                                <h6>Quick Links</h6>
                            </div>
                            <div class="col">
                                <ul class="footer-links">
                                    <li class="nav-item"><a class="nav-link" href="#about-section">About Us</a></li>
                                    <li class="nav-item"><a class="nav-link" href="Contactus.aspx">Contact Us</a></li>
                                    <li class="nav-item"><a class="nav-link" href="sitemap.aspx">Sitemap</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <hr />
            </div>
        </footer>
    </div>


    <style>
        .site-footer {
            background-color: #26272b;
            padding: 45px 0 20px;
            font-size: 15px;
            line-height: 24px;
            color: #737373;
        }

        .row {
            display: flex;
            justify-content: space-between;
        }

        .site-footer hr {
            border-top-color: #bbb;
            opacity: 0.5
        }

            .site-footer hr.small {
                margin: 20px 0
            }

        .site-footer h6 {
            color: #fff;
            font-size: 16px;
            text-transform: uppercase;
            margin-top: 5px;
            letter-spacing: 2px
        }

        .site-footer a {
            color: #737373;
        }

            .site-footer a:hover {
                color: #3366cc;
                text-decoration: none;
            }

        .footer-links {
            padding-left: 0;
            list-style: none
        }

            .footer-links li {
                display: block
            }

            .footer-links a {
                color: #737373
            }

                .footer-links a:active,
                .footer-links a:focus,
                .footer-links a:hover {
                    color: #3366cc;
                    text-decoration: none;
                }

            .footer-links.inline li {
                display: inline-block
            }

        .copyright-text {
            margin: 0
        }
    </style>
</asp:Content>
