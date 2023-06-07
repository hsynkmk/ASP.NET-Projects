<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewJobs.aspx.cs" Inherits="Job_Portal.ViewJobs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet2.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 103px" class="nav">
            <asp:Label ID="Label9" runat="server" Text="JobSearch"></asp:Label>
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
                <Items>
                    <asp:MenuItem Text="Home" Value="Home" NavigateUrl="Default.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Contact Us" Value="Contact Us" NavigateUrl="ContactUs.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Sign Up" Value="Sign Up" NavigateUrl="SignUp.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Login" Value="Login" NavigateUrl="Login.aspx"></asp:MenuItem>
                </Items>
                <StaticMenuItemStyle ForeColor="White" HorizontalPadding="30px" />
                <StaticItemTemplate>
                    <%# Eval("Text") %>
                </StaticItemTemplate>
            </asp:Menu>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Connectiondb %>" SelectCommand="SELECT * FROM [companydb] WHERE (([job] LIKE '%' + @job + '%') AND ([loc] LIKE '%' + @loc + '%'))">
            <SelectParameters>
                <asp:SessionParameter Name="job" SessionField="name" Type="String" />
                <asp:SessionParameter Name="loc" SessionField="loc" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView class="styled-table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" DataKeyNames="cid">
            <Columns>
                <asp:BoundField DataField="comname" HeaderText="COMPANY" SortExpression="comname" />
                <asp:BoundField DataField="loc" HeaderText="LOCATION" SortExpression="loc" />
                <asp:BoundField DataField="job" HeaderText="JOB" SortExpression="job" />
                <asp:BoundField DataField="pack" HeaderText="SALARY" SortExpression="pack" />
                <asp:BoundField DataField="qual" HeaderText="QUALIFICATION" SortExpression="qual" />
                <asp:BoundField DataField="exper" HeaderText="EXPERIANCE" SortExpression="exper" />
                <asp:BoundField DataField="jbtype" HeaderText="TYPE" SortExpression="jbtype" />
                <asp:BoundField DataField="descri" HeaderText="DESCRIPTION" SortExpression="descri" />
                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="WANT TO APPLY? " ShowHeader="True" Text="APPLY" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
