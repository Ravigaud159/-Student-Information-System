using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Information_System
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");

            }

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {

            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\rahul\\OneDrive\\Desktop\\ASSIGNMENTS\\Santosh Jain\\AWT_PROJECTS\\Student Information System\\Student Information System\\App_Data\\Students.mdf\";Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Students (Name, Age, Class, Email) VALUES (@Name, @Age, @Class, @Email)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@Age", int.Parse(AgeTextBox.Text));
                cmd.Parameters.AddWithValue("@Class", ClassTextBox.Text);
                cmd.Parameters.AddWithValue("@Email", EmailTextBox.Text);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            MessageLabel.Text = "Student added successfully!";
        }
    }  
}