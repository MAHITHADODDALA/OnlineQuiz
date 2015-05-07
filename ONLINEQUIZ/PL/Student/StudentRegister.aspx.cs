using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ONLINEQUIZ.ENTITY;
using ONLINEQUIZ.BAL;

namespace ONLINEQUIZ.SD
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtsid.Text = "";
            txtrsid.Text = "";
            txtsname.Text = "";
            txtsemail.Text = "";
            txtsphone.Text = "";
            txtspwd.Text = "";
            txtsrpwd.Text = "";
        }

        //Registering values
        SRegister sr = new SRegister();
        //sending values to BAL
        BSreg bsr = new BSreg();
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {

                sr.Sname = txtsname.Text;
                sr.Spwd = txtspwd.Text;
                sr.Sid = Convert.ToDecimal(txtrsid.Text);
                sr.Ssec = txtsec.Text;
                sr.Semail = txtsemail.Text;
                sr.Sphone = Convert.ToDecimal(txtsphone.Text);
                bsr.BSRDInsert(sr);
                int n = Convert.ToInt32(Session["SRVD"].ToString());
                if (n >= 1)
                {
                    Label1.Visible = true;
                }
                else if (n == 0)
                {
                    Label1.Visible = true;
                    Label1.Text = "succesfull Registered";
                    Response.Redirect("~/HomePage.aspx");
                }
            }
            catch { }
            finally { }
           
        }
    }
}