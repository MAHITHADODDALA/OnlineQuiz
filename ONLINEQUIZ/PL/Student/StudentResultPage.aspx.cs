using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using ONLINEQUIZ.ENTITY;
using ONLINEQUIZ.BAL;
namespace ONLINEQUIZ.PL.Student
{
    public partial class StudentResultPage : System.Web.UI.Page
    {
       // SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        SqlConnection con = new SqlConnection("Data Source=.;initial catalog=college;integrated security=true;");

        string aa;
        string s;
        string sec;
        SDDtbl sd = new SDDtbl();
        BSreg sr = new BSreg();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["sid"] == null)
                {
                    Response.Redirect("~/HomePage.aspx");

                }
                Label3.Text = "You Currently Logged in as:" + Session["sid"].ToString();
                aa = Session["sid"].ToString();
                s = Session["sname"].ToString();
                sec = Session["sec"].ToString();
                Label8.Text = "Student Name:" + s.ToString();
                Label9.Text = "Student Section:" + sec.ToString();
                
                sr.BSR(aa);
                Label1.Text = Session["result1"].ToString();
                sr.BSRTOF();
                if (!IsPostBack)
                {
                    sr.BfillcontrolRP(GridView1);
                }
            }
            catch { }
            finally { }
        }

       
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                sd.Id = aa.ToString();
                sr.BSDD(sd);
            }
            catch { }
            finally { }
                Session.Abandon();
                Response.Redirect("~/HomePage.aspx");
           
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                GridView1.PageIndex = e.NewPageIndex;
                
                sr.BfillcontrolRP(GridView1);
            }
            catch { }
            finally { }
        }
        protected void lnkbtncontact_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ContactUs.aspx");
        }
    }
}