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
    public partial class attendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addattendance_btn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert  into attendanceTable (coursename, email, date, attendance) values (@coursename, @email, @date, @dayattendance) ";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@coursename", coursename.SelectedItem.ToString());
                com.Parameters.AddWithValue("@email", email.Text);
                com.Parameters.AddWithValue("@date", date.Text);
                com.Parameters.AddWithValue("@dayattendance", dayattendance.Text);
                


                com.ExecuteNonQuery();

                Response.Write("<script>alert('TimeTable Added Successfully') </script>");




                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error : " + ex.ToString());

            }
        }
    }
}