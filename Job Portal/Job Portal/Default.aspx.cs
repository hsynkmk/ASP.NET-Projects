using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Job_Portal
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindDataList();
        }

        protected void bindDataList()
        {
            JobDataList.DataSource = SQLClass.GetJobList();
            JobDataList.DataBind();
        }
        protected void SearchBTN_Click(object sender, EventArgs e)
        {
            JobDataList.DataSource = SQLClass.jobSearch(JobTypeDDL.SelectedItem.Text, LocationTB.Text);
            JobDataList.DataBind();
        }
    }
}