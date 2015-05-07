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
    public partial class FacultyVQP : System.Web.UI.Page
    {
        BSreg bsr = new BSreg();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Fsubcode"] == null)
            {
                Response.Redirect("~/HomePage.aspx");

            }
            if (!IsPostBack)
            {
                string s = Session["Fsubcode"].ToString();
                bsr.Bfillcontrol(GridView1, s);
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
                string s = Session["Fsubcode"].ToString();
                bsr.Bfillcontrol(GridView1, s);
            }
            catch { }
            finally { }
        }
    }
}