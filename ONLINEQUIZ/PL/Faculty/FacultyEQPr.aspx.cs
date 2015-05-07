using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ONLINEQUIZ.BAL;

namespace ONLINEQUIZ.PL.Faculty
{
    public partial class FacultyEQPr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BSreg bsr = new BSreg();
            if (!IsPostBack)
            {
                string s = Session["Fsubcode"].ToString();
                bsr.Bfillcontrol(GridView1, s);
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.ToString() == "edt")
            {

                UpdatePanel2.Update();
                Panel2_ModalPopupExtender.Show();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}