using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shopping_Website
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Get the user's first name and last name from the form
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;

            // Create a new cookie with the user's first name and last name
            HttpCookie userInfoCookie = new HttpCookie("UserInfo");
            userInfoCookie.Values["FirstName"] = firstName;
            userInfoCookie.Values["LastName"] = lastName;
            userInfoCookie.Expires = DateTime.Now.AddMonths(1);

            // Add the cookie to the response
            Response.Cookies.Add(userInfoCookie);

            // Redirect to the Default page
            Response.Redirect("Default.aspx");
        }
    }
}