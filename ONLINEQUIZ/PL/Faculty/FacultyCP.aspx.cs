using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ONLINEQUIZ.ENTITY;
using ONLINEQUIZ.BAL;

namespace ONLINEQUIZ.PL.Faculty
{
    public partial class FacultyChangepwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Fsubcode"] == null)
            {
                Response.Redirect("~/HomePage.aspx");

            }
            txtfsubcode.Text = Session["Fsubcode"].ToString();
        }
        //sending FCPwd values to BAL
        FCPwd fcpawd = new FCPwd();
        BSreg br = new BSreg();
        protected void btnfcpsubmit_Click(object sender, EventArgs e)
        {
            //txtfsubcode_TextBoxWatermarkExtender.WatermarkText = Session["Fsubcode"].ToString();
            try
            {
                if (txtfname.Text == "" || txtfnpwd.Text == "" || txtfpwd.Text == "" || txtfsubcode.Text == "")
                {

                }
                else
                {
                    fcpawd.Fname = txtfname.Text;
                    fcpawd.Fpwd = txtfnpwd.Text;
                    br.BFCPValues(fcpawd);
                    Response.Redirect("~/PL/Faculty/FacultySPage.aspx");
                }
            }
            catch { }
            finally { }
        }
        protected void btnfcpreset_Click(object sender, EventArgs e)
        {
            txtfname.Text = "";
            txtfnpwd.Text = "";
            txtfpwd.Text = "";
            
        }

        protected void lnksout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/HomePage.aspx");
        }

        
    }
}