<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Job_Portal.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url(images/main_img.jpg); background-size: cover; height: 550px">
        <br />
        <br />
        <br />
        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 mt-lg-0 mb-5 container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-12 order-lg-1 order-2 align-self-center  mb-lg-0 mb-5">
                    <div class="site-header-inner  mt-lg-0 mb-5">
                        <p class="text-white">We have lots of job offers that you deserve</p>
                        <h1 class="text-white" style="font-weight: 600; font-size: 70px;">Your Dream</h1>
                        <h3 class="text-white" style="font-weight: lighter; font-size: 40px;">Job is Waiting</h3>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-12 order-lg-2 order-1 text-center">
                    <div class="banner-image">
                        <div style="height: 57px; position: absolute; background-color: white; margin-top: 75px; margin-left: 250px; width: 50%; padding: 10px; display: flex; justify-content: space-between;">
                            <asp:DropDownList ID="JobTypeDDL" Font-Size="small" runat="server" CssClass="form-control">
                                <asp:ListItem>Jobs</asp:ListItem>
                                <asp:ListItem>Game Developer</asp:ListItem>
                                <asp:ListItem>UI Designer</asp:ListItem>
                                <asp:ListItem>.Net Developer</asp:ListItem>
                                <asp:ListItem>Software Developer</asp:ListItem>
                                <asp:ListItem>Data Analyst</asp:ListItem>
                                <asp:ListItem>Mobile Developer</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="LocationTB" CssClass="form-control" Font-Size="small" runat="server" placeholder="Location"></asp:TextBox>
                            <asp:Button ID="SearchBTN" runat="server" CssClass="btn btn-primary" Font-Size="Small" Text="Search" OnClick="SearchBTN_Click" />
                        </div>
                    </div>
                </div>
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
                            <h6 class="card-subtitle mb-2 text-muted"><%# Eval("Company") %> <span class="badge bg-light"><%# Eval("Salary", "{0:C}") %></span></h6>
                            <p class="card-text"><%# Eval("Description") %></p>
                            <span class="badge bg-info"><%# Eval("Type") %></span>
                            <asp:LinkButton ID="JobDetailBTN" PostBackUrl='<%# "~/JobDetail.aspx?company=" + Eval("Company") %>' runat="server">More detail</asp:LinkButton>
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
                At ComJob, we are dedicated to fostering a team of individuals who share our passion and drive in delivering the ultimate job search 
                experience for both job seekers and employers. Our mission is centered around creating innovative products that empower 
                and connect individuals with the best employment opportunities. To accomplish this, we actively seek out diverse and 
                talented individuals who mirror the job seekers we support. Inclusion and Belonging form the very foundation of our 
                core values at ComJob, as we believe that by embracing diverse perspectives and backgrounds, we can better understand 
                and cater to the unique needs of our users. Together, we strive to build a platform that provides equal opportunities 
                for all job seekers, making ComJob the go-to destination for finding the perfect job match.
   
            </p>
            <div class="skills">
                <span>Development</span>
                <span>Cyber Security</span>
                <span>Hardware</span>
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
                        comjobs.com
                            <br />
                        With ComJobs, you can search lots of jobs online to find the next step in your career.
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
                                <li class="nav-item"><a class="nav-link" href="#">Game Developer</a></li>
                                <li class="nav-item"><a class="nav-link" href="#">UI Designer</a></li>
                                <li class="nav-item"><a class="nav-link" href="#">.Net Developer</a></li>
                                <li class="nav-item"><a class="nav-link" href="#">Mobile Developer</a></li>
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
                                <li class="nav-item"><a class="nav-link" href="ContactUs.aspx">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <hr />
        </div>
    </footer>

    <style>
        .about-section {
            background: url(./images/team.jpg) no-repeat left;
            background-size: 55%;
            background-color: #fdfdfd;
            overflow: hidden;
            height: 400px;
            padding: 50px 0;
        }

        .inner-container {
            width: 55%;
            float: right;
            background-color: #fdfdfd;
            padding: 20px;
            height: 300px;
        }

            .inner-container h1 {
                margin-bottom: 30px;
                font-size: 30px;
                font-weight: 900;
            }

        .text {
            font-size: 13px;
            color: #545454;
            line-height: 30px;
            text-align: justify;
            margin-bottom: 40px;
        }

        .skills {
            display: flex;
            justify-content: space-between;
            font-weight: 700;
            font-size: 13px;
        }

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
