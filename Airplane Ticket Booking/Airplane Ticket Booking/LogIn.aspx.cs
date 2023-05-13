using System;
using System.Collections.Generic;
using System.Data;
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
                welcomeLBL.Text = "Welcome, " + Request.Cookies["UserInfo"]["PassengerName"];
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
            DataTable dt = SQLClass.LogIn(emailTB.Text, passwordTB.Text);

            // when user exists
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                HttpCookie userInfoCookie = new HttpCookie("UserInfo");

                // Write all data from the DataRow into the cookie
                userInfoCookie.Values["BookingID"] = dr["BookingID"].ToString();
                userInfoCookie.Values["PassengerID"] = dr["PassengerID"].ToString();
                userInfoCookie.Values["AirplaneCapacity"] = dr["AirplaneCapacity"].ToString();
                userInfoCookie.Values["PassenderSeatNum"] = dr["PassenderSeatNum"].ToString();
                userInfoCookie.Values["PassengerName"] = dr["PassengerName"].ToString();
                userInfoCookie.Values["PassengerSurname"] = dr["PassengerSurname"].ToString();
                userInfoCookie.Values["PassengerGender"] = dr["PassengerGender"].ToString();
                userInfoCookie.Values["PassengerEmail"] = dr["PassengerEmail"].ToString();
                userInfoCookie.Values["PassengerPassword"] = dr["PassengerPassword"].ToString();
                userInfoCookie.Values["PassengerPhone"] = dr["PassengerPhone"].ToString();
                userInfoCookie.Values["DeparturePoint"] = dr["DeparturePoint"].ToString();
                userInfoCookie.Values["Destination"] = dr["Destination"].ToString();
                userInfoCookie.Values["Date"] = dr["Date"].ToString();
                userInfoCookie.Values["Price"] = dr["Price"].ToString();

                userInfoCookie.Expires = DateTime.Now.AddMonths(1);

                // Add the cookie to the response
                Response.Cookies.Add(userInfoCookie);

                // Redirect to the Default page
                Response.Redirect("MainPage.aspx");
            }
            else
            {
                lblUyari.Text = "Incorrect Email or Password";
            }
        }
    }
}