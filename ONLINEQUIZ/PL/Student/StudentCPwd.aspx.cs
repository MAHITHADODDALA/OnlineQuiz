using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ONLINEQUIZ.BAL;
using ONLINEQUIZ.ENTITY;

namespace ONLINEQUIZ.PL.Student
{
    public partial class StudentCPwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["sid"] == null)
            {
                Response.Redirect("~/HomePage.aspx");

            }
            txtsid.Text = Session["sid"].ToString();
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtsname.Text = "";
            txtpwd.Text = "";
            txtnpwd.Text = "";
        }
        SCPwd sp = new SCPwd();
        BSreg bsr = new BSreg();
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                sp.Sname = txtsname.Text;
                sp.Spwd = txtnpwd.Text;
                bsr.BSCPValues(sp);
                Response.Redirect("~/PL/Student/StudentSPage.aspx");
            }
            catch { }
            finally { }
        }

        protected void lnkbtnb_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PL/Student/StudentSPage.aspx");
        }
    }
}