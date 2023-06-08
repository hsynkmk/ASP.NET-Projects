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
                signInHR.Visible = false;
                signUpHR.Visible = false;
                welcomeLBL.Text = "Welcome, " + Request.Cookies["UserInfo"]["FirstName"];
                if (Request.Cookies["UserInfo"]["FirstName"] == "admin")
                {
                    manageBtn.Visible = true;
                }
                else
                {
                    manageBtn.Visible = false;
                }
            }
            else
            {
                logOutBtn.Visible = false;
            }
            bindJoblist();
        }
        protected void bindJoblist()
        {
            JobDataList.DataSource = SQLClass.GetJobList();
            JobDataList.DataBind();
        }


        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            Session["Job"] = DropDownList1.Text;
            Session["Location"] = TextBox1.Text;
            Response.Redirect("ViewJobs.aspx");
        }

        protected void logOutBtn_Click(object sender, EventArgs e)
        {
            HttpCookie userInfoCookie = new HttpCookie("UserInfo");
            userInfoCookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(userInfoCookie);
            Response.Redirect("~/Default.aspx");
        }

        protected void manageBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin.aspx");
        }
    }
}