using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shopping_Website
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserInfo"] == null)
                {
                    Response.Write("<script>alert('Log in please');</script>");
                }
                BindCartItems();
            }
        }

        protected void BindCartItems()
        {
            List<Product> products = (List<Product>)Session["Products"];
            ArrayList cartItems = (ArrayList)Session["Cart"];

            if (cartItems != null && cartItems.Count > 0)
            {
                List<Product> cartProducts = products.Where(p => cartItems.Contains(p.ProductID)).ToList();

            }
        }

        protected void lvCartItems_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "Remove")
            {
                int productId = Convert.ToInt32(e.CommandArgument);
                List<int> cartItems = (List<int>)Session["Cart"];
                cartItems.Remove(productId);
                Session["Cart"] = cartItems;
                BindCartItems();
            }
        }
    }
}