using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Job_Portal
{
    public partial class Admin : System.Web.UI.Page
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

        protected void logOutBtn_Click(object sender, EventArgs e)
        {
            HttpCookie userInfoCookie = new HttpCookie("UserInfo");
            userInfoCookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(userInfoCookie);
            Response.Redirect("~/Default.aspx");
        }

        protected void SaveBTN_Click(object sender, EventArgs e)
        {
            SQLClass.AddJob(CompanyTB.Text, LocationTB.Text, JobTB.Text, SalaryTB.Text,QualificationTB.Text,ExperianceTB.Text, TypeTB.Text, DescriptionTB.Text);
        }
    }
}