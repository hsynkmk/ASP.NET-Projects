using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Airplane_Ticket_Booking
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] != null)
            {
                signInHR.Visible = false;
                signUpHR.Visible = false;
                welcomeLBL.Text = "Welcome, " + Request.Cookies["UserInfo"]["PassengerName"];
                if(Request.Cookies["UserInfo"]["PassengerName"] == "admin")
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

        protected void seferGosterBtn_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] == null)
            {
                Response.Redirect("~/LogIn.aspx");
            }
            else
            {
                string gidis = Gidistarihi.Text;
                string donus = DonusTarihi.Text;
                string kalkis = neredenDropDown.Text;
                string varis = nereyeDropDown.Text;
                bool gidisDonus = gidisdonus.Checked;

                if (gidisDonus)
                {
                    Response.Redirect(String.Format("Expeditions.aspx?kalkisyeri={0}&varisyeri={1}&gidistarihi={2}&donustarihi={3}&gidisDonus=true", kalkis, varis, gidis, donus, gidisdonus));
                }
                else
                {
                    Response.Redirect(String.Format("Expeditions.aspx?kalkisyeri={0}&varisyeri={1}&gidistarihi={2}", kalkis, varis, gidis));
                }
            }

        }

        protected void manageBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin.aspx");
        }
    }
}