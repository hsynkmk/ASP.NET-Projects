using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Job_Portal
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignInBTN_Click(object sender, EventArgs e)
        {
            DataTable dt = SQLClass.LogIn(EmailTB.Text, PasswordTB.Text);

            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                HttpCookie userInfoCookie = new HttpCookie("UserInfo");

                // Write all data from the DataRow into the cookie
                userInfoCookie.Values["FirstName"] = dr["FirstName"].ToString();
                userInfoCookie.Values["LastName"] = dr["LastName"].ToString();
                userInfoCookie.Values["Email"] = dr["Email"].ToString();

                userInfoCookie.Expires = DateTime.Now.AddMonths(1);

                // Add the cookie to the response
                Response.Cookies.Add(userInfoCookie);

                if (dr["UserType"].ToString() == "Admin")
                {
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    // Redirect to the Default page
                    Response.Redirect("Default.aspx");
                }
                
            }
            else
            {
                Response.Write("<script>alert('You are not registered yet');</script>");
            }
        }
    }
}