using iTextSharp.text.pdf;
using iTextSharp.text;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.IO;

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
                welcomeLBL.Text = "Welcome, " + Request.Cookies["UserInfo"]["PassengerName"];

                if (!IsPostBack)
                {
                    // Retrieve the booking information from the database
                    DataTable dt = SQLClass.GetBookingInformation();

                    // Set the GridView's data source and bind it
                    InfoGridView.DataSource = dt;
                    InfoGridView.DataBind();

                    DataTable dt2 = SQLClass.GetUserInformation();

                    // Set the GridView's data source and bind it
                    UserGridView.DataSource = dt2;
                    UserGridView.DataBind();
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

        protected void PDFButton_Click(object sender, EventArgs e)
        {
            // Create a new PDF document
            Document document = new Document();

            // Create a new PdfWriter instance, which will write the PDF to a MemoryStream
            MemoryStream output = new MemoryStream();
            PdfWriter writer = PdfWriter.GetInstance(document, output);

            // Open the document
            document.Open();

            // Create a new PdfPTable with the same number of columns as the GridView
            PdfPTable table = new PdfPTable(InfoGridView.Columns.Count);

            // Add the header row to the table
            for (int i = 0; i < InfoGridView.Columns.Count; i++)
            {
                PdfPCell pdfCell = new PdfPCell(new Phrase(InfoGridView.Columns[i].HeaderText));
                pdfCell.BackgroundColor = new BaseColor(240, 240, 240);
                table.AddCell(pdfCell);
            }

            // Add the data rows to the table
            for (int i = 0; i < InfoGridView.Rows.Count; i++)
            {
                for (int j = 0; j < InfoGridView.Columns.Count; j++)
                {
                    PdfPCell pdfCell = new PdfPCell(new Phrase(InfoGridView.Rows[i].Cells[j].Text));
                    table.AddCell(pdfCell);
                }
            }

            // Add the table to the document
            document.Add(table);

            // Close the document
            document.Close();

            // Send the PDF file to the browser for download
            Response.ContentType = "application/pdf";
            Response.AddHeader("Content-Disposition", "attachment;filename=GridView.pdf");
            Response.BinaryWrite(output.ToArray());
        }


    }
}