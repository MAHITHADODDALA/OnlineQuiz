using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using ONLINEQUIZ.BAL;
using ONLINEQUIZ.ENTITY;
namespace ONLINEQUIZ.PL.Admin
{
    public partial class AdminFD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtsubcode.Text = "";
        }
        BSreg bsr = new BSreg();
        ADF adf = new ADF();
        protected void btndelete_Click(object sender, EventArgs e)
        {
            try
            {
                adf.Fsubcode = txtsubcode.Text;
                bsr.BADF(adf);
                txtsubcode.Text = "";
                MessageBox.Show("Deleted Sucessfully");
           }
            catch
            {
            }
            finally
            {

            }
        }

        protected void lnkbtnsout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/HomePage.aspx");
        }
    }
}