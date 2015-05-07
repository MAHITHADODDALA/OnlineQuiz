using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ONLINEQUIZ.PL.Student
{
    public partial class StudentSPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["sid"] == null)
            {
                Response.Redirect("~/HomePage.aspx");

            }
           
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PL/Student/StudentCPwd.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PL/Student/StudentBExam.aspx");
        }
    }
}