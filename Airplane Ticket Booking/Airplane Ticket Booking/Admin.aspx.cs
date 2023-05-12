﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Airplane_Ticket_Booking
{
    public partial class YoneticiPaneli : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] != null)
            {
                signInHR.Visible = false;
                signUpHR.Visible = false;
                welcomeLBL.Text = "Welcome, " + Request.Cookies["UserInfo"]["Name"];
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

        protected void Button1_Click(object sender, EventArgs e)
        {

        }


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void rezTablosu_RowCommand(object sender, GridViewCommandEventArgs e)
        {


        }

        protected void rezTablosu_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}