<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewJobs.aspx.cs" Inherits="Job_Portal.ViewJobs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet2.css" />
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="start">
            <div style="height: 103px">
                <asp:Label ID="Label6" runat="server" Text="JobSearch"></asp:Label>
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
            </div>
        </div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="workstation id=JobPortalDB.mssql.somee.com;packet size=4096;user id=hsynkmk_SQLLogin_1;pwd=rgjw8rwz4b;data source=JobPortalDB.mssql.somee.com;persist security info=False;initial catalog=JobPortalDB" SelectCommand="SELECT * FROM [Job] WHERE (([Job] LIKE '%' + @Job + '%') AND ([Location] LIKE '%' + @Location + '%'))">
                <SelectParameters>
                    <asp:SessionParameter Name="Job" SessionField="Job" Type="String" />
                    <asp:SessionParameter Name="Location" SessionField="Location" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView class="styled-table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="Company" HeaderText="COMPANY" SortExpression="comname" />
                    <asp:BoundField DataField="Location" HeaderText="LOCATION" SortExpression="loc" />
                    <asp:BoundField DataField="Job" HeaderText="JOB" SortExpression="job" />
                    <asp:BoundField DataField="Salary" HeaderText="SALARY" SortExpression="pack" />
                    <asp:BoundField DataField="Qualification" HeaderText="QUALIFICATION" SortExpression="qual" />
                    <asp:BoundField DataField="Experiance" HeaderText="EXPERIANCE" SortExpression="exper" />
                    <asp:BoundField DataField="Type" HeaderText="TYPE" SortExpression="jbtype" />
                    <asp:BoundField DataField="Description" HeaderText="DESCRIPTION" SortExpression="descri" />
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="WANT TO APPLY? " ShowHeader="True" Text="APPLY" />
                </Columns>
            </asp:GridView>
        </div>

    </form>
</body>
</html>
