using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ONLINEQUIZ.BAL;
using ONLINEQUIZ.ENTITY;
using System.Windows.Forms;
namespace ONLINEQUIZ.PL.Faculty
{
    public partial class FacultyENofQ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Fsubcode"] == null)
            {
                Response.Redirect("~/HomePage.aspx");

            }
        }
        BSreg br = new BSreg();
        FSetQ fq = new FSetQ();
        protected void btnsetnq_Click(object sender, EventArgs e)
        {
            try
            {
                fq.Noq = Convert.ToDecimal(txtfsetnq.Text);
                br.BFQSC();
                    if(fq.Noq<=Convert.ToInt32( Session["FQSC"].ToString()))
                    {
                br.BFSQ(fq);
                    }
                    else
                    {
                        MessageBox.Show("Entered Number is larger than the number questions");
                    }
            }
            catch { }
            finally { }
        }

        protected void btndel_Click(object sender, EventArgs e)
        {
            try
            {
                br.BFDSETQ();
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