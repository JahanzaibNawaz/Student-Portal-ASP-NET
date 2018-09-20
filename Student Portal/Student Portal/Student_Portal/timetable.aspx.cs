using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Student_Portal.Student_Portal
{
    public partial class timetable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowStudentTimetable(); //Timetable
        }

        private void ShowStudentTimetable()
        {
            string cs2 = ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString;
            using (SqlConnection con2 = new SqlConnection(cs2))
            {
                using (SqlCommand cmd2 = new SqlCommand("Select * From timeTable ", con2))
                {
                    using (SqlDataAdapter sda2 = new SqlDataAdapter(cmd2))
                    {
                        DataTable dt2 = new DataTable();
                        sda2.Fill(dt2);
                        rptrTimetable.DataSource = dt2;
                        rptrTimetable.DataBind();
                    }
                }
            }

        }
    }
}