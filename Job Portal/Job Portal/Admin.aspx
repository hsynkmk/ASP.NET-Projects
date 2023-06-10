<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Job_Portal.Admin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Control</title>
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@5.2.3/dist/zephyr/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <h3 class="text-white">JobSearch</h3>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarColor01">
                        <ul class="navbar-nav me-auto">
                            <li class="nav-item">
                                <a class="nav-link active text-white" href="Admin.aspx">Admin Control</a>
                            </li>
                        </ul>
                        <ul id="UserLogin" class="navbar-nav  justify-content-end" runat="server">
                            <li class="nav-item">
                                <asp:Label ID="username" runat="server" CssClass="nav-link text-white" Text="Admin"></asp:Label>
                            </li>
                            <li class="nav-item">
                                <asp:LinkButton ID="SignOutBTN" CssClass="nav-link text-white" OnClick="SignOutBTN_Click" runat="server">Sign Out</asp:LinkButton>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="col-form-label">Company</label>
                            <asp:TextBox ID="CompanyTB" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="CompanyTB" runat="server" ForeColor="Red" Font-Size="X-Small" ErrorMessage="*Company required" ValidationGroup="addForm"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="col-form-label">Location</label>
                            <asp:TextBox ID="LocationTB" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="LocationTB" runat="server" ForeColor="Red" Font-Size="X-Small" ErrorMessage="*Location required" ValidationGroup="addForm"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="col-form-label">Job</label>
                            <asp:TextBox ID="JobTB" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="JobTB" runat="server" ForeColor="Red" Font-Size="X-Small" ErrorMessage="*Job required" ValidationGroup="addForm"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group">
                            <label class="col-form-label">Salary</label>
                            <asp:TextBox ID="SalaryTB" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="SalaryTB" runat="server" ForeColor="Red" Font-Size="X-Small" ErrorMessage="*Salary required" ValidationGroup="addForm"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="col-form-label">Qualification</label>
                            <asp:TextBox ID="QualificationTB" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="QualificationTB" runat="server" ForeColor="Red" Font-Size="X-Small" ErrorMessage="*Qualification required" ValidationGroup="addForm"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="col-form-label">Experiance</label>
                            <asp:TextBox ID="ExperianceTB" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="ExperianceTB" runat="server" ForeColor="Red" Font-Size="X-Small" ErrorMessage="*Experiance required" ValidationGroup="addForm"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label class="col-form-label">Job Type</label>
                            <asp:DropDownList class="form-control" ID="JobTypeDDL" runat="server">
                                <asp:ListItem Value="Full-time">Full-time</asp:ListItem>
                                <asp:ListItem Value="Part-time">Part-time</asp:ListItem>
                                <asp:ListItem Value="Temporary">Temporary</asp:ListItem>
                                <asp:ListItem Value="Project based">Project based</asp:ListItem>
                                <asp:ListItem Value="Freelance">Freelance</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ControlToValidate="JobTypeDDL" runat="server" ForeColor="Red" Font-Size="X-Small" ErrorMessage="*Job-Type required" ValidationGroup="addForm"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="col-form-label">Description</label>
                            <asp:TextBox ID="DescriptionTB" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="DescriptionTB" runat="server" ForeColor="Red" Font-Size="X-Small" ErrorMessage="*Description required" ValidationGroup="addForm"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row d-flex justify-content-end">

                    <div class="col d-flex justify-content-end">
                        <asp:LinkButton ID="SaveBTN" CssClass="btn btn-dark" ValidationGroup="addForm" OnClick="SaveBTN_Click" runat="server"><i class="ti-save" style="margin-right: 5px"></i> Save</asp:LinkButton>
                    </div>
                </div>
                <br />
                <div class="row d-flex justify-content-center">
                    <div class="table-responsive mb-4">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="GV" CssClass="table table-striped table-bordered" Style="width: 100%" AllowPaging="true" PageSize="12" PagerStyle-HorizontalAlign="Center" PagerStyle-CssClass=" text-info table table-bordered" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-CssClass="table-info "
                                    OnRowDeleting="GV_RowDeleting" AutoGenerateColumns="false" runat="server">
                                    <EditRowStyle CssClass="table-dark" />
                                    <Columns>
                                        <asp:BoundField DataField="Company" HeaderText="COMPANY" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                                        <asp:BoundField DataField="Location" HeaderText="LOCATION" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                                        <asp:BoundField DataField="Job" HeaderText="JOB" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                                        <asp:BoundField DataField="salary" DataFormatString="{0} ₺" HeaderText="SALARY" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                                        <asp:BoundField DataField="Qualification" HeaderText="QUALIFICATION" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                                        <asp:BoundField DataField="Experiance" HeaderText="EXPERIANCE" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                                        <asp:BoundField DataField="Type" HeaderText="Job-Type" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                                        <asp:BoundField DataField="Description" HeaderText="DESCRIPTION" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" />
                                        <asp:CommandField ControlStyle-CssClass="btn btn-sm btn-outline-danger bi bi-trash-fill" DeleteText="" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ShowDeleteButton="true" />
                                    </Columns>
                                </asp:GridView>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
