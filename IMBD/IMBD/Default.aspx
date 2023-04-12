<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IMBD.Default" Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IMDB</title>
    <style>
        body {
            margin-top: 100px;
            text-align: center;
            font-family: Arial, sans-serif;
            background-color: wheat
        }

        .tableContainer {
            background-color: inherit;
            border-radius: 10px;
            box-shadow: 10px 10px 10px 10px rgba(0, 0.3, 0.3, 0.3);
            width: 800px;
            margin: auto;
            padding: 30px;
        }

        .gridView {
            width: 100%;
            text-align: center;
            margin: 0 auto;
        }

        .ad {
            float: left;
            width: 150px;
            height: 150px;
            margin-left: 50px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div>
            <h1>TOP 50 COMEDY</h1>
        </div>

        <div class="ad">
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/ads/ads.xml"
                Height="150px" Width="150px" />
        </div>


        <div class="tableContainer">

            <asp:GridView ID="GridViewMovies" runat="server" AllowPaging="True" OnPageIndexChanging="GridViewMovies_PageIndexChanging" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="gridView">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                        <ControlStyle Width="105px" Height="150px" />
                        <ItemStyle CssClass="image-thumbnail" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Title" HeaderText="Name" SortExpression="Title" />
                    <asp:BoundField DataField="RuntimeStr" HeaderText="Duration" SortExpression="RuntimeStr" />
                    <asp:BoundField DataField="IMDbRating" HeaderText="IMDB Rate" SortExpression="IMDbRating" />
                    <asp:BoundField DataField="IMDbRatingVotes" HeaderText="Review Count" SortExpression="IMDbRatingVotes" />

                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
