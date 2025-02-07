using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Postback_ContactUs
{
    public partial class Contact_us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // No specific logic needed during page load
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Get user inputs
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string message = txtMessage.Text.Trim();

            // Check if all fields are filled
            if (!string.IsNullOrEmpty(name) && !string.IsNullOrEmpty(email) && !string.IsNullOrEmpty(message))
            {
                // Display confirmation message
                pnlResult.Visible = true; // Show the result panel
                lblResultMessage.InnerHtml = $"Thank you, <strong>{name}</strong>!<br/>We have received your message:<br/><em>{message}</em><br/>We will contact you at <strong>{email}</strong> shortly.";
            }
            else
            {
                // Display error message if fields are missing
                pnlResult.Visible = true; // Show the result panel
                lblResultMessage.InnerHtml = "Please fill out all fields before submitting.";
            }
        }
    }
}