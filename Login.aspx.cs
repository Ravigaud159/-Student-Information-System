using System;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Web.UI;

namespace Student_Information_System
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtUsername.Text) || string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                lblError.Text = "All fields are required.";
                return;
            }

            string hashedPassword = HashPassword(txtPassword.Text);

            using (SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\rahul\\OneDrive\\Desktop\\ASSIGNMENTS\\Santosh Jain\\AWT_PROJECTS\\Student Information System\\Student Information System\\App_Data\\Students.mdf\";Integrated Security=True"))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT Username FROM Users WHERE Username = @Username AND Password = @Password";
                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", hashedPassword);

                        object result = cmd.ExecuteScalar();
                        if (result != null)
                        {
                            Session["Username"] = txtUsername.Text.Trim();
                            Response.Redirect("Home.aspx");
                        }
                        else
                        {
                            lblError.Text = "Invalid username or password.";
                        }
                    }
                }
                catch (Exception ex)
                {
                    lblError.Text = "Error: " + ex.Message;
                }
            }
        }

        private string HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
                StringBuilder builder = new StringBuilder();
                foreach (byte b in bytes)
                {
                    builder.Append(b.ToString("x2"));
                }
                return builder.ToString();
            }
        }
    }
}
