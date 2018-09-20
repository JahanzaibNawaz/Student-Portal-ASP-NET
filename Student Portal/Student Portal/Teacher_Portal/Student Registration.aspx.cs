using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Student_Portal.Teacher_Portal
{
    public partial class Student_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "Select count(*) from studentTable where email = '" + stdemail.Text + "' ";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                

                if(temp == 1)
                {
                    Response.Write("<script>alert('User already register') </script>");
                }
                conn.Close();

            }
            
               

                
                

        }

        protected void registerStudent_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert  into studentTable (name, fname, mobNo, email, pass, adrs, course, csharp, cplusplus, aspnet, ruby, python, java, assembly, javascript) values (@stdname, @stdfname, @stdmobno, @stdemail, @stdpass, @stdadrs, @stdcourse, @csharp, @cplusplus, @aspnet, @ruby, @python, @java, @assembly, @javascript) ";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@stdname", stdname.Text);
                com.Parameters.AddWithValue("@stdfname", stdfname.Text);
                com.Parameters.AddWithValue("@stdmobno", stdmobno.Text);
                com.Parameters.AddWithValue("@stdemail", stdemail.Text);
                com.Parameters.AddWithValue("@stdpass", stdpass.Text);
                com.Parameters.AddWithValue("@stdadrs", stdadrs.Text);
                com.Parameters.AddWithValue("@stdcourse", stdcourse.SelectedItem.ToString());
                com.Parameters.AddWithValue("@csharp", csharp.Text);
                com.Parameters.AddWithValue("@cplusplus", cplusplus.Text);
                com.Parameters.AddWithValue("@aspnet", aspnet.Text);
                com.Parameters.AddWithValue("@ruby", ruby.Text);
                com.Parameters.AddWithValue("@python", python.Text);
                com.Parameters.AddWithValue("@java", java.Text);
                com.Parameters.AddWithValue("@assembly", assembly.Text);
                com.Parameters.AddWithValue("@javascript", javascript.Text);

                com.ExecuteNonQuery();

                Response.Write("<script>alert('Registration Successful') </script>");




                conn.Close();

            }
            catch(Exception ex)
            {
                Response.Write("Error : " + ex.ToString());

            }
        }

    }
}