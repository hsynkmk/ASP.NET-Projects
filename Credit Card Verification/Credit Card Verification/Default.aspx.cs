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
            // Get the credit card number, CCV number, and expiration date entered by the user
            string cardNumber = CardNoTextBox.Text.Trim();
            string ccvNumber = CVCTextBox.Text.Trim();
            int expirationMonth = int.Parse(MonthDropDownList.SelectedValue);
            int expirationYear = int.Parse(YearDropDownList.SelectedValue);

            // Validate the credit card number
            if (string.IsNullOrEmpty(cardNumber))
            {
                // No card number provided
                lblError.Text = "No card number provided";
                return;
            }

            // Determine the card type based on the first digit of the card number
            string cardType = "";
            if (cardNumber.StartsWith("4"))
            {
                // Visa card
                cardType = "Visa";
            }
            else if (cardNumber.StartsWith("5"))
            {
                // MasterCard
                cardType = "MasterCard";
            }
            else
            {
                // Unknown card type
                lblError.Text = "Unknown card type";
                return;
            }

            // Validate the credit card number format and length
            Regex regex;
            if (cardType == "Visa")
            {
                // Visa card format: 16 digits
                regex = new Regex("^4[0-9]{15}$");
            }
            else
            {
                // MasterCard format: 16 digits
                regex = new Regex("^5[1-5][0-9]{14}$");
            }
            if (!regex.IsMatch(cardNumber))
            {
                // Credit card number is in invalid format
                lblError.Text = "Credit card number is in invalid format";
                return;
            }

            // Validate the credit card number using Luhn algorithm
            if (!ValidateCreditCardNumber(cardNumber))
            {
                // Credit card number is invalid
                lblError.Text = "Credit card number is invalid";
                return;
            }

            // Validate the CCV number format and length
            regex = new Regex("^[0-9]{3,4}$");
            if (!regex.IsMatch(ccvNumber))
            {
                // CCV number is invalid
                lblError.Text = "CCV number is invalid";
                return;
            }

            // Validate the expiration date
            DateTime expirationDate = new DateTime(expirationYear, expirationMonth, 1).AddMonths(1).AddDays(-1);
            if (expirationDate < DateTime.Now)
            {
                // Expiration date is invalid
                lblError.Text = "Expiration date is invalid";
                return;
            }

            // All credit card information entered by the user is valid, display the card image and number
            imgCard.ImageUrl = "https://img.aydinlik.com.tr/rcman/Cw1280h720q95gc/storage/files/images/2022/03/06/visa-ve-mastercarddan-rusya-karari-nuuL.jpg"; //$"~/Images/{cardType}.png";
            //lblCardNumber.Text = cardNumber;
        }
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



    }
}