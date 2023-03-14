using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.WebRequestMethods;

namespace Credit_Card_Verification
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            infoLabel.ForeColor = System.Drawing.Color.Red;

            // Card number, CCV number, and expiration date entered by the user
            string name = nameSurnameTextBox.Text.Trim().ToLower();
            string cardNumber = cardNoTextBox.Text.Trim();
            string cvcNumber = cvcTextBox.Text.Trim();
            int expirationMonth = int.Parse(monthDropDownList.SelectedValue);
            int expirationYear = int.Parse(yearDropDownList.SelectedValue);
            Regex regex;


            // VALIDATIONS

            

            regex = new Regex(@"^[a-zA-ZığüşöçĞÜŞÖÇ]+(([\s\-][a-zA-ZığüşöçĞÜŞÖÇ]+)*)$");


            // Name is in invalid format
            if (!regex.IsMatch(name))
            {
                infoLabel.Text = "Name is in invalid format";
                return;
            }

            // No card number provided
            if (string.IsNullOrEmpty(cardNumber))
            {
                infoLabel.Text = "No card number provided";
                return;
            }

            // Card type based on the first digit
            string cardType = "";

            // Visa card
            if (cardNumber.StartsWith("4"))
            {
                cardType = "Visa";
            }
            // MasterCard
            else if (cardNumber.StartsWith("5"))
            {
                cardType = "MasterCard";
            }
            // Unknown card type
            else
            {
                infoLabel.Text = "Unknown card type";
                return;
            }



            // Validate the credit card number format and length
            // Visa card format: 16 digits
            if (cardType == "Visa")
            {
                regex = new Regex("^4[0-9]{15}$");
            }

            // MasterCard format: 16 digits
            else
            {
                regex = new Regex("^5[1-5][0-9]{14}$");
            }

            // Credit card number is in invalid format
            if (!regex.IsMatch(cardNumber))
            {
                infoLabel.Text = "Credit card number is in invalid format";
                return;
            }

            // Validation of the credit card number using Luhn algorithm
            if (!ValidateCreditCardNumber(cardNumber))
            {
                // Credit card number is invalid
                infoLabel.Text = "Credit card number is invalid";
                return;
            }

            // Validate the CCV number format and length
            regex = new Regex("^[0-9]{3,4}$");
            if (!regex.IsMatch(cvcNumber))
            {
                infoLabel.Text = "CCV number is invalid";
                return;
            }

            // Validate the expiration date
            DateTime expirationDate = new DateTime(expirationYear, expirationMonth, 1).AddMonths(1).AddDays(-1);
            if (expirationDate < DateTime.Now)
            {
                infoLabel.Text = "Expiration date is invalid";
                return;
            }

            // All credit card information entered by the user is valid
            infoLabel.ForeColor = System.Drawing.Color.Green;
            infoLabel.Text = "SUCCESSFUL";
        }

        //Luhn algorithm
        private bool ValidateCreditCardNumber(string cardNumber)
        {
            // Reverse the credit card number and convert each digit to an integer
            int[] digits = cardNumber.ToCharArray().Reverse().Select(x => int.Parse(x.ToString())).ToArray();

            // Compute the sum of the digits
            int sum = 0;
            for (int i = 0; i < digits.Length; i++)
            {
                // If the digit is in an odd position (counting from the right), double it
                if (i % 2 == 1)
                {
                    digits[i] *= 2;

                    // If the doubled digit is greater than 9, subtract 9 from it
                    if (digits[i] > 9)
                    {
                        digits[i] -= 9;
                    }
                }

                // Add the digit to the sum
                sum += digits[i];
            }

            // If the sum is divisible by 10, the credit card number is valid
            return sum % 10 == 0;
        }

        protected void CardNoTextBox_TextChanged(object sender, EventArgs e)
        {

            string cardNumber = cardNoTextBox.Text.Trim();
            cardNoOnImage.Text = cardNumber;
            if (cardNumber.StartsWith("4"))
            {
                // Visa card
                imgCard.ImageUrl = "https://cdn.visa.com/v2/assets/images/logos/visa/blue/logo.png";
            }
            else if (cardNumber.StartsWith("5"))
            {
                // MasterCard
                imgCard.ImageUrl = "https://1000logos.net/wp-content/uploads/2017/03/MasterCard-Logo-1996-768x432.png";
            }

        }

        protected void MonthDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            exDateOnImg.Text = monthDropDownList.SelectedValue + "/" + yearDropDownList.SelectedValue.ElementAt(2) + yearDropDownList.SelectedValue.ElementAt(3);
        }

        protected void YearDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            exDateOnImg.Text = monthDropDownList.SelectedValue + "/" + yearDropDownList.SelectedValue.ElementAt(2) + yearDropDownList.SelectedValue.ElementAt(3);
        }

        protected void NameSurnameTextBox_TextChanged(object sender, EventArgs e)
        {
            nameOnImg.Text = nameSurnameTextBox.Text;
        }
    }
}