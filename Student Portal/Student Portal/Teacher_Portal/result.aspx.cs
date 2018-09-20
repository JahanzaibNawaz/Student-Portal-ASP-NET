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
    public partial class result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addresult_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert  into resultTable (coursename, email, csharp, cplusplus, aspnet, ruby, python, java, assembly, javascript) values (@coursename, @email,@csharp, @cplusplus, @aspnet, @ruby, @python, @java, @assembly, @javascript) ";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@coursename", coursename.SelectedItem.ToString());
                com.Parameters.AddWithValue("@email", email.Text);
                com.Parameters.AddWithValue("@csharp", csharp.Text);
                com.Parameters.AddWithValue("@cplusplus", cplusplus.Text);
                com.Parameters.AddWithValue("@aspnet", aspnet.Text);
                com.Parameters.AddWithValue("@ruby", ruby.Text);
                com.Parameters.AddWithValue("@python", python.Text);
                com.Parameters.AddWithValue("@java", java.Text);
                com.Parameters.AddWithValue("@assembly", assembly.Text);
                com.Parameters.AddWithValue("@javascript", javascript.Text);

                
                com.ExecuteNonQuery();

                Response.Write("<script>alert('Result Added Successful') </script>");

                
                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error : " + ex.ToString());

            }
        }
    }
}