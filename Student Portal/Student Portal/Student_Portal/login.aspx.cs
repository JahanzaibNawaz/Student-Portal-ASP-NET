using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Student_Portal.Student_Portal
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["New"] != null)
            {
                Response.Redirect("dashboard.aspx");
            } 

        }

        protected void Student_login_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "Select count(*) from studentTable where email = '" + user_email.Text + "' ";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();

                if(temp == 1)
                {
                    conn.Open();
                    String checkpass = "Select pass from studentTable where email = '" + user_email.Text + "'  ";
                    SqlCommand passcmd = new SqlCommand(checkpass, conn);
                    string password = passcmd.ExecuteScalar().ToString().Replace(" ", "");

                    if(password == user_pass.Text)
                    {
                        Session["New"] = user_email.Text;
                        Response.Redirect("dashboard.aspx");
                    }
                    else
                    {
                        Response.Write("<script> alert('Wrong Password')</script>");
                    }
                    conn.Close();

                } 
                else
                {
                    Response.Write("<script> alert('Database Error')</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script> alert('Login Successful')</script>");
                Response.Write("Database Erro " + ex);
            }
        }

        protected void Teacher_submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "Select count(*) from teacherTable where email = '" + user_email.Text + "' ";

                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();

                if (temp == 1)
                {
                    conn.Open();
                    String checkpass = "Select pass from teacherTable where email = '" + user_email.Text + "' ";
                    SqlCommand passcmd = new SqlCommand(checkpass, conn);
                    string password = passcmd.ExecuteScalar().ToString().Replace(" ", "");

                    if (password == user_pass.Text)
                    {
                        Session["New"] = user_email.Text;
                        Response.Redirect("../Teacher_Portal/dashboard.aspx");
                    }
                    else
                    {
                        Response.Write("<script> alert('Wrong Password')</script>");
                    }
                    conn.Close();

                }
                else
                {
                    Response.Write("<script> alert('Database Error')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('Login Successful')</script>");
                Response.Write("Database Erro " + ex);
            }
        }

        
    }
}