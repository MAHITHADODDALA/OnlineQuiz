using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ONLINEQUIZ.BAL;
namespace ONLINEQUIZ.PL.Admin
{
    public partial class AdminVM : System.Web.UI.Page
    {
        BSreg bsr = new BSreg();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                bsr.BfillcontrolFDTLS(GridView1);
            }
            
        }

        protected void lnkbtnsout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/HomePage.aspx");
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                GridView1.PageIndex = e.NewPageIndex;
                bsr.BfillcontrolFDTLS(GridView1);

            }
            catch { }
            finally { }
        }
    }
}