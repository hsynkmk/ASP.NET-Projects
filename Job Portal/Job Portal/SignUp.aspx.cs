using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Job_Portal
{
    public partial class SignUp1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SingUpBTN_Click(object sender, EventArgs e)
        {
            SQLClass.SignUp(EmailTB.Text, PasswordTB.Text, "User", FirstNameTB.Text, LastNameTB.Text, AddressTB.Text, PhoneTB.Text, GenderRadBtnL.SelectedValue, "01.01.2023", AbltTB.Text);

            DataTable dt = SQLClass.LogIn(EmailTB.Text, PasswordTB.Text);

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
    }
}