using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Student_Portal.Teacher_Portal
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStudentRptr();
                ShowStudentTimetable();
                BindStudentNotice();
            }

        }


    

        private void BindStudentRptr()
        {
            //throw new NotImplementedException();
            string cs = ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                using(SqlCommand cmd = new SqlCommand("Select * From StudentTable ", con))
                {
                    using(SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrStd.DataSource = dt;
                        rptrStd.DataBind();
                    }
                }
            }
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

    
        private void BindStudentNotice()
        {
            string cs3 = ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString;
            using (SqlConnection con3 = new SqlConnection(cs3))
            {
                using (SqlCommand cmd3 = new SqlCommand("Select * From notifications ", con3))
                {
                    using (SqlDataAdapter sda3 = new SqlDataAdapter(cmd3))
                    {
                        DataTable dt3 = new DataTable();
                        sda3.Fill(dt3);
                        studentNoticerptr.DataSource = dt3;
                        studentNoticerptr.DataBind();
                    }
                }
            }
        }


    }
}