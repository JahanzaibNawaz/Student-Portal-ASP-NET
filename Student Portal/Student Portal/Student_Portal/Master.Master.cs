﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Portal.Student_Portal
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                userEmail.Text += Session["New"].ToString();
            } else
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            if (Session["New"] == null)
            {
                Response.Redirect("login.aspx");
            }

        }

        
    }
}