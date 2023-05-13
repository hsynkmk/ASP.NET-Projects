using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Airplane_Ticket_Booking
{
    public partial class Giriş : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] != null)
            {
                signInHR.Visible = false;
                signUpHR.Visible = false;
                welcomeLBL.Text = "Welcome, " + Request.Cookies["UserInfo"]["Name"];
            }
            else
            {
                MyTicketsHR.Visible = false;
                logOutBtn.Visible = false;
            }
        }

        protected void logOutBtn_Click(object sender, EventArgs e)
        {
            HttpCookie userInfoCookie = new HttpCookie("UserInfo");
            userInfoCookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(userInfoCookie);
            Response.Redirect("~/MainPage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string value = SQLClass.LogIn(emailTB.Text, passwordTB.Text);

            if (value != null)
            {
                // Create a new cookie with the user's email and password
                HttpCookie userInfoCookie = new HttpCookie("UserInfo");
                userInfoCookie.Values["Email"] = emailTB.Text;
                userInfoCookie.Values["Name"] = value;
                userInfoCookie.Expires = DateTime.Now.AddMonths(1);

                // Add the cookie to the response
                Response.Cookies.Add(userInfoCookie);

                // Redirect to the Default page
                Response.Redirect("MainPage.aspx");
            }
            else
                lblUyari.Text = "Incorrect Email or Password";

        }
    }
}