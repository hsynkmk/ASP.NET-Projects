using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Job_Portal
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] != null)
            {
                signInHR.Visible = false;
                signUpHR.Visible = false;
                welcomeLBL.Text = "Welcome, " + Request.Cookies["UserInfo"]["FirstName"];
            }
            else
            {
                logOutBtn.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SQLClass.SignUp(TextBox5.Text, TextBox6.Text, "User",TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, RadioButtonList1.SelectedValue, "01.01.2023", TextBox7.Text);

            DataTable dt = SQLClass.LogIn(TextBox5.Text, TextBox6.Text);

            // when user exists
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                HttpCookie userInfoCookie = new HttpCookie("UserInfo");

                // Write all data from the DataRow into the cookie
                userInfoCookie.Values["FirstName"] = dr["FirstName"].ToString();
                userInfoCookie.Values["LastName"] = dr["LastName"].ToString();

                userInfoCookie.Expires = DateTime.Now.AddMonths(1);

                // Add the cookie to the response
                Response.Cookies.Add(userInfoCookie);

                // Redirect to the Default page
                Response.Redirect("Default.aspx");
                
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void logOutBtn_Click(object sender, EventArgs e)
        {
            HttpCookie userInfoCookie = new HttpCookie("UserInfo");
            userInfoCookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(userInfoCookie);
            Response.Redirect("~/Default.aspx");
        }

    }
}