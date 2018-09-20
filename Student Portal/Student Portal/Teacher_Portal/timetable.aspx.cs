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
    public partial class timetable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addtimetable_btn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert  into timetable (coursename, dayname, lectureone, timeone, lecturetwo, timetwo) values (@coursename, @dayname, @lectureone, @timeone, @lecturetwo, @timetwo) ";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@coursename", coursename.SelectedItem.ToString());
                com.Parameters.AddWithValue("@dayname", dayname.SelectedItem.ToString());
                com.Parameters.AddWithValue("@lectureone", lectureone.SelectedItem.ToString());
                com.Parameters.AddWithValue("@timeone", timeone.Text);
                com.Parameters.AddWithValue("@lecturetwo", lecturetwo.SelectedItem.ToString());
                com.Parameters.AddWithValue("@timetwo", timetwo.Text);
                

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