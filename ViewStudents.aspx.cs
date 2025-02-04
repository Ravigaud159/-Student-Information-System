using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Information_System
{
    public partial class ViewStudents : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");

            }
            else
            {
                if (!IsPostBack)
                {
                    LoadStudents();
                }
            }

           
           
        }

        protected void LoadStudents()
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\rahul\\OneDrive\\Desktop\\ASSIGNMENTS\\Santosh Jain\\AWT_PROJECTS\\Student Information System\\Student Information System\\App_Data\\Students.mdf\";Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Students";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                StudentsGridView.DataSource = dt;
                StudentsGridView.DataBind();
            }
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\rahul\\OneDrive\\Desktop\\ASSIGNMENTS\\Santosh Jain\\AWT_PROJECTS\\Student Information System\\Student Information System\\App_Data\\Students.mdf\";Integrated Security=True";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Students WHERE Name LIKE @Search";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                da.SelectCommand.Parameters.AddWithValue("@Search", "%" + SearchTextBox.Text + "%");
                DataTable dt = new DataTable();
                da.Fill(dt);
                StudentsGridView.DataSource = dt;
                StudentsGridView.DataBind();
            }
        }

       
    }

        
}