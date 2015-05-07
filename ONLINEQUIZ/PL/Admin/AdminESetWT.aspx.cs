using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ONLINEQUIZ.ENTITY;
using ONLINEQUIZ.BAL;

namespace ONLINEQUIZ.PL.Admin
{
    public partial class AdminESetWT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblexamset.Visible = false;
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtexamtime.Text="";
            txtsubcode.Text = "";

        }
        AExamSet aes = new AExamSet();
        BSreg br = new BSreg();
        protected void btnsetexam_Click(object sender, EventArgs e)
        {
            if (txtsubcode.Text == "" || txtexamtime.Text == "")
            {
                lblexamset.Visible = true;
                lblexamset.Text = "Invalid Details";

            }
            else
            {
                try
                {

                    aes.Subcode = txtsubcode.Text;
                    aes.Time = txtexamtime.Text;
                    br.BAESET(aes);

                }
                catch { }
                finally { }
            }
        }

        protected void btndel_Click(object sender, EventArgs e)
        {
            try
            {
                br.BADESET();
            }
            catch { }
            finally { }
        }

        protected void lnkbtnsout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/HomePage.aspx");
        }
    }
}