using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;

namespace ONLINEQUIZ.HELPDATA
{
    //using collegeDetails Database
    public class connect2
    {

    public SqlConnection con;
    public SqlCommand cmd;
    public SqlDataReader dr;
    public SqlDataAdapter da;
    public DataSet ds = new DataSet();
    public DataTable dt = new DataTable();
    public int x;
  
    public void DBOpen()
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["connect2"]);
        con.Open();
    }
    public void DBClose()
    {
        con.Close();
    }



    public void DBCmdOpen(string query)
    {
        DBOpen();
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
    }
     public void DBCmdClose()
    {
        cmd = null;
        con.Close();
    }
      


    public void DBReaderOpen(string query)
    {
        DBOpen();
        cmd = new SqlCommand(query, con);
       dr= cmd.ExecuteReader();
    }
    public void DBReaderClose()
    {
        cmd = null;
        dr.Close();
        con.Close();
    }
    public void DBReaderOpen1(string query)
    {
        DBOpen();
        cmd = new SqlCommand(query, con);
        x = Convert.ToInt32(cmd.ExecuteScalar());
    }
    public void DBReaderClose1()
    {
        cmd = null;
        con.Close();
    }


    public void activecard(string query)
    {
        DBOpen();
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
    }


    public DataTable  DBDataAdapter(string query)
    {
        DBOpen();
        cmd = new SqlCommand(query, con);
        da = new SqlDataAdapter(cmd);
       
        da.Fill(dt);
       
        DBClose();
        return dt;
    }


    public void DBDataAdapter(string query, GridView gvControl)
    {
        DBOpen();
        cmd = new SqlCommand(query ,con);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        gvControl.DataSource = ds;
        gvControl.DataBind();
        DBClose();
    }


    }
}