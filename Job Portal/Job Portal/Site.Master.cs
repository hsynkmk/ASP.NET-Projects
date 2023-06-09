using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Job_Portal
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] != null)
            {
                signin.Visible = false;
                signup.Visible = false;
                UserLogin.Visible = true;
                username.Text = Request.Cookies["UserInfo"]["FirstName"];
            }
        }

        protected void SignOutBTN_Click(object sender, EventArgs e)
        {
            // get cookies
            HttpCookie cookieUName = Request.Cookies["UserInfo"];

            if (cookieUName != null)
            {
                // set cookies to expires
                cookieUName.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(cookieUName);

                // Go to login page
                Response.Redirect("Default.aspx");
            }
        }
    }
}