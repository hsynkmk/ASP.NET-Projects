using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Shopping_Website
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Request.Cookies["UserInfo"] == null)
            {
                loggedInPanel.Visible = false;
                loggedOutPanel.Visible = true;
            }
            
            else
            {
                loggedInPanel.Visible = true;
                loggedOutPanel.Visible = false;

                string[] userInfo = Request.Cookies["UserInfo"].Value.Split('=', '&');
                NameLabel.Text = userInfo[1] + " " + userInfo[3];


                // get products from session
                List<Product> products;
                if (Session["Products"] == null)
                {
                    // if products not in session, create five Product objects and add them to session
                    products = new List<Product>
                    {
                        new Product(1, "adidas", 10.0, "/Images/i1.jpeg", "Breaknet Beyaz Erkek Sneaker Ayakkabı FX8707", "Brand 1", 100, "Category 1"),
                        new Product(2, "Armani", 20.0, "/Images/i2.jpeg", "Exchange Siyah Erkek Sneaker XUX151", "Brand 2", 200, "Category 2"),
                        new Product(3, "U.S. Polo Assn", 30.0, "/Images/i3.jpg", "Franco 2fx Beyaz Erkek Sneaker", "Brand 3", 300, "Category 3"),
                        new Product(4, "Lumberjack", 40.0, "/Images/i4.jpg", "Garry 2pr Kırık Beyaz Erkek Sneaker", "Brand 4", 400, "Category 4"),
                        new Product(5, "Kinetix", 50.0, "/Images/i5.jpeg", "101335173 Rabon Pu 3fx Spor Ayakkabı", "Brand 5", 500, "Category 5")
                    };
                    Session["Products"] = products;
                }
                else
                {
                    products = (List<Product>)Session["Products"];
                }

                // display product titles and links
                foreach (Product product in products)
                {
                    string productLink = "ProductInfo.aspx?id=" + product.ProductID;
                    //ProductsList.InnerHtml += "<li><a href='" + productLink + "'>" + product.ProductName + "</a></li>";
                }
            }


        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            HttpCookie userInfoCookie = new HttpCookie("UserInfo");
            userInfoCookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(userInfoCookie);
            Response.Redirect("~/Default.aspx");
        }
    }
}