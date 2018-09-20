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
    public partial class notice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindStudentNotice(); //Notice

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