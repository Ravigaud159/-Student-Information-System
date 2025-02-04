using System;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Web.UI;

namespace Student_Information_System
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Input validation
            if (string.IsNullOrWhiteSpace(txtUsername.Text) || string.IsNullOrWhiteSpace(txtEmail.Text) || string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                //lblError.Text = "All fields are required.";
                return;
            }

            string hashedPassword = HashPassword(txtPassword.Text);

            using (SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\rahul\\OneDrive\\Desktop\\ASSIGNMENTS\\Santosh Jain\\AWT_PROJECTS\\Student Information System\\Student Information System\\App_Data\\Students.mdf\";Integrated Security=True"))
            {
                try
                {
                    connection.Open();
                    string query = "INSERT INTO Users (Username, Email, Password) VALUES (@Username, @Email, @Password)";
                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", hashedPassword);

                        int result = cmd.ExecuteNonQuery();
                        if (result > 0)
                        {
                            Response.Redirect("Login.aspx");
                        }
                        else
                        {
                            //lblError.Text = "Registration failed. Please try again.";
                        }
                    }
                }
                catch (Exception ex)
                {
                    //lblError.Text = "Error: " + ex.Message;
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
