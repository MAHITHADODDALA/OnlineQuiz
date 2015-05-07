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
    public partial class FacultyEQP : System.Web.UI.Page
    {
        BSreg bsr = new BSreg();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = Session["Fsubcode"].ToString();
                bsr.Bfillcontrol(GridView1, s);
            }
        }

       /* protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.ToString() == "edt")
            {
                           
               
            }
        }*/

        

        

        protected void btnupd_Click(object sender, EventArgs e)
        {
        
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panelgrid_CollapsiblePanelExtender.Enabled = true;
            Panelgrid_CollapsiblePanelExtender.CollapseControlID = "Button1";
            Panelgrid_CollapsiblePanelExtender.ExpandControlID = "Button2";
            
        } 
        
        
    }
}