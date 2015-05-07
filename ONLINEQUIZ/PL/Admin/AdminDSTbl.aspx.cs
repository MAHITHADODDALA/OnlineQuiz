using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ONLINEQUIZ.BAL;
using ONLINEQUIZ.ENTITY;
namespace ONLINEQUIZ.PL.Admin
{
    public partial class AdminDSTbl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ADST ad = new ADST();
        BSreg bsr = new BSreg();
        protected void btndel_Click(object sender, EventArgs e)
        {
            try
            {
                ad.Sid = Convert.ToDecimal(txtsid.Text);
                bsr.BADST(ad);
                Response.Write("Deleted Sucessfully");
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
            txtsid.Text = "";
        }

        protected void lnkbtnsout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/HomePage.aspx");
        }
    }
}