using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ONLINEQUIZ.BAL;

namespace ONLINEQUIZ.PL.Faculty
{
    public partial class FacultyDSR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Fsubcode"] == null)
            {
                Response.Redirect("~/HomePage.aspx");

            }
            lbldelall.Visible = false;
        }
        BSreg br = new BSreg();
        protected void btndel_Click(object sender, EventArgs e)
        {
            try
            {
                string sid = txtfdsr.Text;
                br.BFDSR(sid);
                lbldelall.Visible = true;
                lbldelall.Text = "Successfully 1 Student Result Deleted";
            }
            catch { }
            finally
            {
            }
        }

        protected void btndelall_Click(object sender, EventArgs e)
        {
            try
            {
                string sec = txtfdstures.Text;
                br.BFDASR(sec);
                lbldelall.Visible = true;
                txtfdstures.Text = "";
                lbldelall.Text = "Successfully All Students Result Deleted";
            }
            catch
            {
            }
            finally
            {
            }
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtfdsr.Text = "";
        }

        protected void lnkbtnsout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/HomePage.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ContactUs.aspx");
        }
    }
}