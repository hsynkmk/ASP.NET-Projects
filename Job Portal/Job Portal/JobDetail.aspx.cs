using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Job_Portal
{
    public partial class JobDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string JobCompany = Request.QueryString["company"];
                if(JobCompany != null)
                {
                    bindJobInfo(JobCompany);
                }
            }
        }

        protected void bindJobInfo(string company)
        {
            Repeater.DataSource = SQLClass.jobInfo(company);
            Repeater.DataBind();
        }

        protected void ApplyBTN_Click(object sender, EventArgs e)
        {
            HtmlGenericControl userLogin = (HtmlGenericControl)Master.FindControl("UserLogin");
            if(userLogin != null && userLogin.Visible == true)
            {
                Response.Write("<script>alert('Job applied successfully');</script>");
            }
            else
            {
                string script = "<script>alert('Please Login to apply for the job.');" +
                "window.location='Login.aspx';</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", script);
            }
        }
    }
}