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
    public partial class AdminLP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }
        ALogin aln = new ALogin();
        BSreg bsr = new BSreg();
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (txtuname.Text == "" || txtapwd.Text == "")
            {
                Label1.Visible = true;
                Label1.Text = "Invalid Details";

            }
            else
            {
                try
                {
                    aln.Aname = txtuname.Text;
                    aln.Apwd = txtapwd.Text;

                    bsr.BALValues(aln);

                    int ACHK = Convert.ToInt32(Session["ACHK"].ToString());


                    if (ACHK == 1)
                    {
                        Response.Redirect("~/PL/Admin/AdminSPage.aspx");
                    }
                    else
                    {
                        Label1.Visible = true;
                        Label1.Text = "Not a valid User";
                    }
                }
                catch { }
                finally { }
            }
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {

            txtuname.Text = "";
            txtapwd.Text = "";
        }
    }
}