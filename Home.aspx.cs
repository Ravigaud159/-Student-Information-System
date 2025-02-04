using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Information_System
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Username"] != null)
            {
                // User is logged in
                string Username = Session["Username"].ToString();
                lblUserName.Text = Username;  // Display the logged-in user's name
                beforeLoginContent.Visible = false;  // Hide the login/register buttons
                afterLoginContent.Visible = true;   // Show the logged-in content
            }
            else
            {
                // User is not logged in
                beforeLoginContent.Visible = true;  // Show the login/register buttons
                afterLoginContent.Visible = false;  // Hide the logged-in content
            }
        }
    }
}