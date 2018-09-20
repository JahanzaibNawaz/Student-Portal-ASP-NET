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
    public partial class studentrecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindStudentRptr(); // Student Record
        }

        private void BindStudentRptr()
        {
            //throw new NotImplementedException();
            string cs = ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                using (SqlCommand cmd = new SqlCommand("Select * From StudentTable where email = '"+ Session["New"] + "' ", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrStd.DataSource = dt;
                        rptrStd.DataBind();
                    }
                }
            }
        }
    }
}