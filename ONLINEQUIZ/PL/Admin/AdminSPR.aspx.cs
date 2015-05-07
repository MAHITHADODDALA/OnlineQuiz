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
    public partial class AdminSPR : System.Web.UI.Page
    {
        BSreg bsr = new BSreg();
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                decimal s = Convert.ToDecimal(txtstuid.Text);
                bsr.BfillcontrolSPR(GridView1, s);
            }
            catch { }
            finally{}

        }
    }
}