using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Job_Portal
{
    public partial class Admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindAlljob();
        }
        protected void bindAlljob()
        {
            GV.DataSource = SQLClass.GetJobList();
            GV.DataBind();
        }

        protected void SaveBTN_Click(object sender, EventArgs e)
        {
            SQLClass.AddJob(CompanyTB.Text, LocationTB.Text, JobTB.Text, SalaryTB.Text, QualificationTB.Text, ExperianceTB.Text, JobTypeDDL.SelectedValue, DescriptionTB.Text);
            bindAlljob();

            CompanyTB.Text = "";
            DescriptionTB.Text = "";
            ExperianceTB.Text = "";
            JobTB.Text = "";
            LocationTB.Text = "";
            QualificationTB.Text = "";
            SalaryTB.Text = "";
            
        }

        protected void GV_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SQLClass.DeleteJob(GV.Rows[e.RowIndex].Cells[0].Text);
            bindAlljob();
        }

        protected void SignOutBTN_Click(object sender, EventArgs e)
        {
            HttpCookie userInfoCookie = new HttpCookie("UserInfo");
            userInfoCookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(userInfoCookie);
            Response.Redirect("~/Default.aspx");
        }
    }
}