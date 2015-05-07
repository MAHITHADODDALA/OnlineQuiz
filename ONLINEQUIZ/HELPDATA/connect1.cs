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
    //using collage Database
    public class connect1
    {

        public SqlConnection cn;
        public SqlCommand cmd;
        public SqlDataReader dr;
        public SqlDataAdapter da;
        public int x;
        public DataSet ds = new DataSet();

        public void DBOpen()
        {
            cn = new SqlConnection(ConfigurationManager.AppSettings["connect1"]);
            cn.Open();
        }
        public void DBClose()
        {
            cn.Close();
        }



        public void DBCmdOpen(string query)
        {
            DBOpen();
            cmd = new SqlCommand(query, cn);
            cmd.ExecuteNonQuery();
        }
        public void DBCmdClose()
        {
            cmd = null;
            cn.Close();
        }



        public void DBReaderOpen(string query)
        {
            DBOpen();
            cmd = new SqlCommand(query, cn);
            dr = cmd.ExecuteReader();
        }
        public void DBReaderClose()
        {
            cmd = null;
            dr.Close();
            cn.Close();
        }



        public void DBReaderOpen1(string query)
        {
            DBOpen();
            cmd = new SqlCommand(query, cn);
            x = Convert.ToInt32(cmd.ExecuteScalar());
        }
        public void DBReaderClose1()
        {
            cmd = null;
            cn.Close();
        }
       


        public void activecard(string query)
        {
            DBOpen();
            cmd = new SqlCommand(query, cn);
            cmd.ExecuteNonQuery();
        }



        public void DBDataAdapter(string query, GridView gvControl)
        {
            DBOpen();
            cmd = new SqlCommand(query, cn);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            gvControl.DataSource = ds;
            gvControl.DataBind();
            DBClose();
        }

    }
}