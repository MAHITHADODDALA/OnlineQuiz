using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace ONLINEQUIZ.PL.Faculty
{
    public partial class FacultyIEDQP : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=RAVI-PC;Initial Catalog=college;Integrated Security=True");
        SqlDataAdapter ad1;
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        DataRow dr;
        SqlCommand cmd = new SqlCommand();
        string s;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Fsubcode"] == null)
            {
                Response.Redirect("~/HomePage.aspx");

            }
           s = Session["Fsubcode"].ToString();
             
            if (!IsPostBack) 
            {
                FillGrid();
            }
        }
      
        public void FillGrid()
        {
            try
            {

                ad1 = new SqlDataAdapter("select * from GIT" + s + "", con);
                ad1.Fill(ds, "aaa");
                dt = ds.Tables["aaa"];
                if (dt.Rows.Count > 0)
                {
                    grdContact.DataSource = dt;
                    grdContact.DataBind();
                }
                else
                {
                    dt.Rows.Add(dt.NewRow());
                    grdContact.DataSource = dt;
                    grdContact.DataBind();

                    int TotalColumns = grdContact.Rows[0].Cells.Count;
                    grdContact.Rows[0].Cells.Clear();
                    grdContact.Rows[0].Cells.Add(new TableCell());
                    grdContact.Rows[0].Cells[0].ColumnSpan = TotalColumns;
                    grdContact.Rows[0].Cells[0].Text = "No Record Found";
                }
            }
            catch { }
            finally { }
        }
        protected void grdContact_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                Label lblqno = (Label)grdContact.Rows[e.RowIndex].FindControl("lblqno");
                TextBox txtq = (TextBox)grdContact.Rows[e.RowIndex].FindControl("txtq");
                TextBox txto1 = (TextBox)grdContact.Rows[e.RowIndex].FindControl("txto1");
                TextBox txto2 = (TextBox)grdContact.Rows[e.RowIndex].FindControl("txto2");
                TextBox txto3 = (TextBox)grdContact.Rows[e.RowIndex].FindControl("txto3");
                TextBox txto4 = (TextBox)grdContact.Rows[e.RowIndex].FindControl("txto4");
                TextBox txtans = (TextBox)grdContact.Rows[e.RowIndex].FindControl("txtans");
                string query;
                con.Open();
                query = "update GIT" + s + " set question='" + txtq.Text + "',option1='" + txto1.Text + "',option2='" + txto2.Text + "',option3='" + txto3.Text + "',option4='" + txto4.Text + "',answer=" + txtans.Text + " where qno=" + lblqno.Text + "";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                grdContact.EditIndex = -1;
                FillGrid();
            }
            catch { }
            finally { }
        }
        protected void grdContact_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                grdContact.EditIndex = e.NewEditIndex;
                FillGrid();
            }
            catch { }
            finally { }
        }
        protected void grdContact_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            try
            {
                grdContact.EditIndex = -1;
                FillGrid();
            }
            catch { }
            finally { }
        }
        protected void grdContact_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("Insert"))
                {
                    TextBox txtNewqno = (TextBox)grdContact.FooterRow.FindControl("txtNewqno");
                    TextBox txtNewq = (TextBox)grdContact.FooterRow.FindControl("txtNewq");
                    TextBox txtNewo1 = (TextBox)grdContact.FooterRow.FindControl("txtNewo1");
                    TextBox txtNewo2 = (TextBox)grdContact.FooterRow.FindControl("txtNewo2");
                    TextBox txtNewo3 = (TextBox)grdContact.FooterRow.FindControl("txtNewo3");
                    TextBox txtNewo4 = (TextBox)grdContact.FooterRow.FindControl("txtNewo4");
                    TextBox txtNewans = (TextBox)grdContact.FooterRow.FindControl("txtNewans");

                    string subject = Session["Fsubcode"].ToString();

                    string s1 = "select count(*) from GIT" + subject + " where qno=" + txtNewqno.Text + " ";
                    SqlCommand cmd9 = new SqlCommand(s1, con);
                    con.Open();
                    int x9 = Convert.ToInt32(cmd9.ExecuteScalar());
                    cmd9.ExecuteNonQuery();
                    con.Close();
                    if (x9 > 0)
                    {
                        Response.Write("The Q.No Entered Already Exists,View the Question Paper and Enter");
                    }
                    else
                    {
                        string query;
                        con.Open();
                        query = "insert into GIT" + s + " values(" + txtNewqno.Text + ",'" + txtNewq.Text + "','" + txtNewo1.Text + "','" + txtNewo2.Text + "','" + txtNewo3.Text + "','" + txtNewo4.Text + "','" + txtNewans.Text + "')";
                        cmd = new SqlCommand(query, con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        grdContact.EditIndex = -1;
                        FillGrid();
                    }
                }
            }
            catch { }
            finally { }
        }
        protected void grdContact_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int qno = Convert.ToInt32(grdContact.DataKeys[e.RowIndex].Values[0].ToString());
                string query;
                con.Open();
                query = "delete from GIT" + s + " where qno=" + qno + "";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                FillGrid();
            }
            catch { }
            finally { }
        }

        protected void grdContact_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                grdContact.PageIndex = e.NewPageIndex;
                FillGrid();
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