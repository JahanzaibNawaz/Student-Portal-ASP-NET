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
    public partial class addnotice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addnotice_btn_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert  into notifications (coursename, notice) values (@coursename, @notice) ";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@coursename", coursename.SelectedItem.ToString());
                com.Parameters.AddWithValue("@notice", notice.Text);
                

                com.ExecuteNonQuery();

                Response.Write("<script>alert('Notification Added Successful') </script>");




                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error : " + ex.ToString());

            }
        }
    }
}