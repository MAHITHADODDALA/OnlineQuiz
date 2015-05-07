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
    public partial class AdminFReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtafname.Text = "";
            txtafpwd.Text = "";
            txtafsubcode.Text = "";
        }

        FLogin fl = new FLogin();
        BSreg bsr = new BSreg();
        protected void btnafsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                fl.Fname = txtafname.Text;
                fl.Fpwd = txtafpwd.Text;
                fl.Fsubcode = txtafsubcode.Text;
                bsr.BAFADD(fl);
                Response.Write("Successfully Added");
                txtafname.Text = "";
                txtafpwd.Text = "";
                txtafsubcode.Text = "";

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