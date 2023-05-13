using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Airplane_Ticket_Booking
{
    public partial class Expeditions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] != null)
            {
                signInHR.Visible = false;
                signUpHR.Visible = false;
                welcomeLBL.Text = "Welcome, " + Request.Cookies["UserInfo"]["PassengerName"];

                string kalkisYeri = Request.QueryString["kalkisyeri"];
                string varisYeri = Request.QueryString["varisyeri"];
                string gidisTarihi = Request.QueryString["gidistarihi"];

                List<string> seats = SQLClass.IsSeatAvailable(kalkisYeri, varisYeri, gidisTarihi);

                foreach (string seat in seats)
                {
                    foreach (Control control in checkBoxPanel.Controls)
                    {
                        if (control is CheckBox)
                        {
                            CheckBox checkbox = (CheckBox)control;
                            if (checkbox.ID.EndsWith(seat))
                            {
                                checkbox.Enabled = false;
                                Label seatLabel = (Label)checkBoxPanel.FindControl("Label" + seat);
                                if (seatLabel != null)
                                {
                                    seatLabel.ForeColor = Color.Red;
                                }
                            }
                        }
                    }
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

        protected void MakeReservationBtn_Click(object sender, EventArgs e)
        {
            string kalkisYeri = Request.QueryString["kalkisyeri"];
            string varisYeri = Request.QueryString["varisyeri"];
            string gidisTarihi = Request.QueryString["gidistarihi"];


            foreach (Control control in checkBoxPanel.Controls)
            {
                if (control is CheckBox)
                {
                    CheckBox checkbox = (CheckBox)control;
                    if (checkbox.Checked)
                    {
                        
                        // Checkbox is checked, do something
                        string seat = checkbox.ID.Substring(checkbox.ID.Length - 2);
                        string bookingID = kalkisYeri.Substring(0, 2) + seat +varisYeri.Substring(0, 2) + gidisTarihi;
                        SQLClass.MakeReservation(seat, bookingID, Request, kalkisYeri, varisYeri, gidisTarihi, "500");
                    }
                }
            }

            Response.Redirect("~/MyTickets.aspx");
        }
    }
}