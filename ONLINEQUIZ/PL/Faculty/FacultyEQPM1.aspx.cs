using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ONLINEQUIZ.BAL;
using System.Data;
using System.Data.SqlClient;
using ONLINEQUIZ.HELPDATA;


namespace ONLINEQUIZ.PL.Faculty
{
    public partial class FacultyEQPM : System.Web.UI.Page
    {
       BSreg bsr = new BSreg();
       connect1 con1 = new connect1();
        
        protected void Page_Load(object sender, EventArgs e)
       {
           if (Session["Fsubcode"] == null)
           {
               Response.Redirect("~/HomePage.aspx");

           }
            Button1.OnClientClick = String.Format("fnClickUpdate('{0}','{1}')", Button1.UniqueID, "");
            
            if (!IsPostBack)
            {
                string s = Session["Fsubcode"].ToString();
                bsr.Bfillcontrol(GridView1, s);
            }
        }
 
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                HyperLink HyperLink1 = (HyperLink)e.Row.FindControl("HyperLink1");
                HyperLink1.Attributes.Add("onclick", "ShowMyModalPopup('" + GridView1.DataKeys[e.Row.RowIndex].Value + "')"); 

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string s = Session["Fsubcode"].ToString();
                string sql = "update GIT" + s + " set qno=" + txtqno.Text + ",question='" + txtq.Text + "',option1='" + txto1.Text + "',option2='" + txto2.Text + "',option3='" + txto3.Text + "',option4='" + txto4.Text + "',answer=" + txtans.Text + " where qno=" + txtqno.Text + "";

                con1.DBOpen();
                SqlCommand cmd = new SqlCommand(sql, con1.cn);
                cmd.ExecuteNonQuery();
                con1.DBClose();

                bsr.Bfillcontrol(GridView1, s);
            }
            catch { }
            finally { }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtqno.Text = "";
            txtq.Text = "";
            txto1.Text = "";
            txto2.Text = "";
            txto3.Text = "";
            txto4.Text = "";
            txtans.Text = "";
        }

        protected void lnkbtnsout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/HomePage.aspx");
        }

       

        
              
        
        
    }
}