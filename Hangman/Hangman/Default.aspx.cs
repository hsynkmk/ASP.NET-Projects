using System;
using System.Collections.Generic;
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

        protected void Page_Load(object sender, EventArgs e)
        {
            SQLClass.openConn();
        }

        protected void Page_Close(object sender, EventArgs e)
        {
            SQLClass.closeConn();
        }

        protected void InitilizeGame()
        {
            lblWord.Text = "";
            SecretWord = SQLClass.GetWord();
            SecretWord = SecretWord.ToUpper();

            for (int i = 0; i < SecretWord.Length; i++)
            {
                lblWord.Text += ("_ ");
            }

            playzone.Visible = true;
            Image1.ImageUrl = "~/Images/0.jpg"; ;
            Infolbl.Text = "";
            Stage = 0;
        }

        protected void LetterButton_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            string buttonText = clickedButton.Text;

            if (SecretWord.Contains(buttonText))
            {
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
                    GameOver();
                
                else
                    Image1.ImageUrl = $"~/Images/{Stage.ToString()}.jpg";
            }

        }


        protected void GameOver()
        {
            Infolbl.Text = "Game Over!";
            playzone.Visible = false;
        }












        protected void AddWordBtt_Click(object sender, EventArgs e)
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

        protected void StartBtn_Click(object sender, EventArgs e)
        {
            InitilizeGame();
        }
    }
}
