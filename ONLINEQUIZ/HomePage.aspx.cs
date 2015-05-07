using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ONLINEQUIZ.ENTITY;
using ONLINEQUIZ.BAL;



namespace ONLINEQUIZ
{
    public partial class HomePage : System.Web.UI.Page
    {
      
        BSreg br = new BSreg();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
            Label1.Visible = false;
            br.BSESET();
            
          
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtfname.Text="";
            txtfpwd.Text = "";
            txtsubcode.Text = "";
        }       
        
        //checking faculty details
        FLogin fl = new FLogin();
        

        #region  checking faculty details
        protected void btnfsubmit_Click(object sender, EventArgs e)
        {

            if (txtfname.Text == "" || txtfpwd.Text == "" || txtsubcode.Text == "")
            {
                Label2.Visible = true;
                Label2.Text = "Invalid Details";

            }
            else
            {
                fl.Fname = txtfname.Text;
                fl.Fpwd = txtfpwd.Text;
               
                fl.Fsubcode = txtsubcode.Text;
                Session["Fsubcode"] = txtsubcode.Text;
               
                br.BFLValues(fl);
                int FCHK = Convert.ToInt32(Session["FCHK"].ToString());


                if (FCHK == 1)
                {
                    Response.Redirect("~/PL/Faculty/FacultySPage.aspx");
                }
                else
                {
                    Label2.Visible = true;
                    Label2.Text="Not a valid User";
                }
            }
        }
        #endregion


        SLogin sl = new SLogin();
      
        protected void btnssubmit_Click1(object sender, EventArgs e)
        {
           

            if ( txtsid.Text == "" || txtspwd.Text == "")
            {
                Label1.Visible = true;
                Label1.Text = "Invalid Details";

            }
            else 
            {
                try
                {
                    sl.Sid = Convert.ToInt32(txtsid.Text);
                    sl.Spwd = txtspwd.Text;
                    br.BSLValues(sl);
                    Session["sid"] = txtsid.Text;
                    int SCHK = Convert.ToInt32(Session["SCHK"].ToString());
                    if (SCHK == 0)
                    {
                        Label1.Visible = true;
                        Label1.Text = "You are trying to acess  second time";
                    }
                    else
                        if (SCHK == 1)
                        {
                            br.BSSLCHK();
                            Response.Redirect("~/PL/Student/StudentSPage.aspx");

                        }
                        else
                        {
                            Label1.Visible = true;
                            Label1.Text = "Not a valid User";
                        }

                }
                catch
                {
                }
                finally
                {
                }
            }
        }

        protected void btnsreset_Click(object sender, EventArgs e)
        {
           
            txtspwd.Text = "";
            txtsid.Text = "";
        }

        protected void lnkbtnadmin_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/PL/Admin/AdminLP.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ContactUs.aspx");
        }

       
    }
}