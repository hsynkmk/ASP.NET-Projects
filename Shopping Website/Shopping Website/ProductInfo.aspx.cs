using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shopping_Website
{
    public partial class ProductInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the ID parameter exists in the query string
                if (Request.QueryString["id"] == null)
                {
                    lblName.Text = "Specify Product ID";
                }
                else
                {
                    int id;
                    if (!int.TryParse(Request.QueryString["id"], out id))
                    {
                        lblName.Text = "Invalid Product ID";
                    }
                    else
                    {
                        // Get the product from the Session state using the ID
                        List<Product> products = (List<Product>)Session["Products"];
                        if (products == null || id < 1 || id > products.Count)
                        {
                            lblName.Text = "Invalid Product ID";
                        }
                        else
                        {
                            Product product = (Product)products[id - 1];

                            // Display the product information
                            Image1.ImageUrl = product.ProductImage;
                            lblName.Text = product.ProductName;
                            lblPrice.Text = "$" + product.ProductPrice.ToString();
                            lblDescription.Text = product.ProductDecription;
                        }
                    }
                }
            }
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            // Get the product ID from the query string
            int id;
            if (!int.TryParse(Request.QueryString["id"], out id))
            {
                lblName.Text = "Invalid Product ID";
            }
            else
            {
                // Get the cart from the Session state or create a new one
                ArrayList cart;
                if (Session["Cart"] == null)
                {
                    cart = new ArrayList();
                }
                else
                {
                    cart = (ArrayList)Session["Cart"];
                }

                // Check if the product is already in the cart
                if (cart.Contains(id))
                {
                    lblCartStatus.Text = "Product was already in the cart.";
                }
                else
                {
                    // Add the product ID to the cart
                    cart.Add(id);
                    Session["Cart"] = cart;

                    lblCartStatus.Text = "Product has been added to the cart.";
                }
            }
        }
    }
}