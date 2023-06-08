<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Job_Portal.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
    <link rel="stylesheet" href="StyleSheet1.css" />
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.3/dist/zephyr/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="start">
            <div style="height: 103px">
                <asp:Label ID="Label1" runat="server" Text="JobSearch"></asp:Label>
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
                <div class="text-center m-5">
                    <asp:Button ID="manageBtn" CssClass="btn btn-success" runat="server" Visible="False" Text="Manage" OnClick="manageBtn_Click" />
                </div>
            </div>

            <br />
            <br />
            <div style="height: 196px">
                <asp:Label ID="Label2" runat="server" ForeColor="White" Text="We have 850,000 Job offers that you deserve"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Your Dream"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Job is Waiting"></asp:Label>
                <br />
                <div style="height: 57px" class="search">
                    <asp:DropDownList ID="DropDownList1" Font-Size="small" runat="server" CssClass="form-control">
                        <asp:ListItem>Job Type</asp:ListItem>
                        <asp:ListItem>Software Engineer</asp:ListItem>
                        <asp:ListItem>Fresher</asp:ListItem>
                        <asp:ListItem>Full-time</asp:ListItem>
                        <asp:ListItem>Software Developer</asp:ListItem>
                        <asp:ListItem>Data Analyst</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" Font-Size="small" runat="server" placeholder="Location"></asp:TextBox>
                    <asp:Button ID="BtnSearch" runat="server" CssClass="btn btn-primary" Font-Size="Small" Text="Search" OnClick="BtnSearch_Click" />
                </div>
            </div>
        </div>
        <br />
        <div class="container">
            <div class="row d-flex justify-content-center">
                <asp:DataList ID="JobDataList" Font-Size="Medium" DataKeyField="Company"
                    RepeatColumns="1" RepeatDirection="Vertical" runat="server">
                    <ItemTemplate>
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title"><%# Eval("Job") %></h4>
                                <h6 class="card-subtitle mb-2 text-muted"><%# Eval("Company") %></h6>
                                <p class="card-text"><%# Eval("Description") %></p>
                                <span class="badge bg-info"><%# Eval("Type") %></span>
                                <a href="<%# "~/JobDetail.aspx?company=" + Eval("Company") %>" class="card-link">More detail</a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
        <br />
        <div class="about-section" id="about-section">
            <div class="inner-container">
                <h1>About Us</h1>
                <p class="text">
                    We're looking to grow our teams with people who share our energy and enthusiasm for creating the best experience for job seekers and employers.

Our mission is to create products that provide opportunities for all job seekers. To do this, we hire Indeedians of all backgrounds to mirror the job seekers we support. That's why Inclusion and Belonging are core values inside JobSearch.
   
                </p>
                <div class="skills">
                    <span>Communication</span>
                    <span>Leadership</span>
                    <span>Massive Network</span>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
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
    </form>
</body>
</html>
