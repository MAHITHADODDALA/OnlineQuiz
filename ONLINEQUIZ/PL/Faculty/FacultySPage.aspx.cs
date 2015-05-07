using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ONLINEQUIZ.PL.Faculty
{
    public partial class FacultySPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Fsubcode"] == null)
            {
                Response.Redirect("~/HomePage.aspx");

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PL/Faculty/FacultyCP.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PL/Faculty/FacultyAQP.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PL/Faculty/FacultyIEDQP.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PL/Faculty/FacultyVQP.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PL/Faculty/FacultyVR.aspx");
        }

        protected void lnkbtndelsr_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PL/Faculty/FacultyDSR.aspx");
        }

       

        protected void lnkbtnfeset_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PL/Faculty/FacultyENofQ.aspx");
        }

        protected void lnkbtnsout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/HomePage.aspx");
        }

        protected void lnkbtnpqp_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/EURIT101QRPT.aspx");
        }

        protected void lnkbtnpr_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm2.aspx");
        }
    }
}