using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ONLINEQUIZ.PL.Admin
{
    public partial class AdminSPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkbtndelstu_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PL/Admin/AdminDSTbl.aspx");
        }

        protected void lnkbtnaddfaculty_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PL/Admin/AdminFReg.aspx");
        }

        protected void lnkbtndf_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PL/Admin/AdminFD.aspx");
        }

        protected void lnkbtnexamset_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PL/Admin/AdminESetWT.aspx");
        }

        protected void lnkbtnsout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/HomePage.aspx");
        }

        protected void lnkbtnSPR_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PL/Admin/AdminSPR.aspx");
        }

    }
}