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
    public partial class FacultyAddQuestion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Fsubcode"] == null)
            {
                Response.Redirect("~/HomePage.aspx");

            }
            lblsubcode.Text = Session["Fsubcode"].ToString();

        }

        protected void btnqreset_Click(object sender, EventArgs e)
        {
            txtqno.Text = "";
            txtq.Text = "";
            txto1.Text = "";
            txto2.Text = "";
            txto3.Text = "";
            txto4.Text = "";
            txtans.Text = "";

        }
        QuestionPaper qp = new QuestionPaper();
        BSreg bsr = new BSreg();
        protected void btnqsubmit_Click(object sender, EventArgs e)
        {
            
            try
            {
                qp.Qno = Convert.ToInt32(txtqno.Text);
                qp.Question = txtq.Text;
                qp.Option1 = txto1.Text;
                qp.Option2 = txto2.Text;
                qp.Option3 = txto3.Text;
                qp.Option4 = txto4.Text;
                qp.Answer = Convert.ToInt32(txtans.Text);
                bsr.BAQPaper(qp);
                txtqno.Text = "";
                txtq.Text = "";
                txto1.Text = "";
                txto2.Text = "";
                txto3.Text = "";
                txto4.Text = "";
                txtans.Text = "";
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