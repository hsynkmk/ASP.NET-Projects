using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Job_Portal
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] != null)
            {
                /*
                if (Menu1.Items.Contains(new MenuItem
                {
                    Text = "Sign Up",
                    Value = "Sign Up"
                })) { 
                }
                    Menu1.Items.RemoveAt(1);
                Menu1.Items.RemoveAt(2);
                Menu1.Items.Add(new MenuItem
                {
                    Text = "Log Out",
                    Value = "Log Out"
                });

                */

            }
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (e.Item.Value == "Log Out")
            {
                HttpCookie userInfoCookie = new HttpCookie("UserInfo");
                userInfoCookie.Expires = DateTime.Now.AddDays(-1d);
                Response.Cookies.Add(userInfoCookie);
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {

        }
    }
}