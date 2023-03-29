using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Hangman
{
    public partial class Default : System.Web.UI.Page
    {
        protected static string SecretWord = "";
        protected static int Stage = 0;
        protected static HtmlGenericControl bodyimg;

        // Set the background color to red


        protected void Page_Load(object sender, EventArgs e)
        {        
            SQLClass.openConn();
            if (!IsPostBack)
            {
                playzone.Visible = false;
                newWordZone.Visible = false;
                bodyimg = (HtmlGenericControl)Page.FindControl("body");
            }

        }

        protected void Page_Close(object sender, EventArgs e)
        {
            SQLClass.closeConn();
        }

        protected void InitilizeGame()
        {
            lblWord.Text = "";
            GIF.ImageUrl = "";
            GIF.Visible = false;
            SecretWord = SQLClass.GetWord();
            displayhint.InnerText = SQLClass.GetHint(SecretWord);
            SecretWord = Regex.Replace(SecretWord, @"\s+", "");
            SecretWord = SecretWord.ToUpper(new CultureInfo("tr-TR", false));

            for (int i = 0; i < SecretWord.Length; i++)
            {
                lblWord.Text += ("_ ");
            }

            playzone.Visible = true;
            foreach (Control control in playzone.Controls)
            {
                if (control is Button)
                {
                    ((Button)control).CssClass = "btn btn-primary btn-letter";
                    ((Button)control).Enabled = true;
                }
            }
            body.Attributes.Add("style", "background-image:url(\"/Images/0.jpg\");");
            Stage = 0;
        }

        protected void LetterButton_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            string buttonText = clickedButton.Text;

            if (SecretWord.Contains(buttonText))
            {
                clickedButton.CssClass = "btn btn-success btn-letter";
                clickedButton.Enabled = false;
                for (int i = 0; i < SecretWord.Length; i++)
                {
                    if (SecretWord[i] == buttonText[0])
                    {
                        lblWord.Text = lblWord.Text.Remove(i * 2, 1);
                        lblWord.Text = lblWord.Text.Insert(i * 2, buttonText);
                    }
                }
            }

            else
            {
                Stage++;
                if(Stage == 10)
                {
                    body.Attributes.Add("style", $"background-image:url(\"/Images/10.jpg\");");
                    GameOver();
                }


                else
                {
                    body.Attributes.Add("style", $"background-image:url(\"/Images/{Stage}.jpg\");");
                    clickedButton.CssClass = "btn btn-danger btn-letter";
                    clickedButton.Enabled = false;
                }

                

            }

            if (SecretWord == lblWord.Text.Replace(" ", ""))
            {
                GameWon();
            }

        }

        protected void GameOver()
        {
            GIF.ImageUrl = "~/Images/gameover.gif";
            playzone.Visible = false;
            Timer1.Enabled = false;
            GIF.Visible = true;
        }

        protected void GameWon()
        {
            playzone.Visible = false;
            Timer1.Enabled = false;
            GIF.ImageUrl = "~/Images/winner.gif";
            GIF.Visible = true;
        }

        protected void AddItemBtn_Click(object sender, EventArgs e)
        {
            newWordZone.Visible = true;
        }

        protected void AddWordBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (!Word.Text.Equals("") && !Hint.Text.Equals(""))
                {
                    SQLClass.AddWord(Word.Text, Hint.Text);
                }
                else
                    Word.Text = ("Cannot be empty");
            }
            catch
            {
                Word.Text = ("Error");
            }
        }

        protected void RemoveWordBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (!Word.Text.Equals(""))
                {
                    SQLClass.RemoveWord(Word.Text);
                }
                else
                    Word.Text = ("Cannot be empty");
            }
            catch
            {
                Word.Text = ("Error");
            }
        }

        protected void StartBtn_Click(object sender, EventArgs e)
        {
            playzone.Visible = true;
            StartBtn.Text = "Yeniden Başla";
            InitilizeGame();

            txtCount.Text = "60";
            Timer1.Interval = 1000; // tick our timer each second
            Timer1.Enabled = true;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            int MyCount = Convert.ToInt32(txtCount.Text);
            if (MyCount >= 1)
            {
                MyCount--;
                txtCount.Text = MyCount.ToString();
            }
            else if (MyCount == 0)
            {
                // we are done, stop the timer
                GameOver();
                GIF.ImageUrl = "~/Images/timeisup.gif";
                GIF.Visible = true;

                Timer1.Enabled = false;
                Response.Redirect(Request.RawUrl); // refresh the page
            }
        }
    }
}