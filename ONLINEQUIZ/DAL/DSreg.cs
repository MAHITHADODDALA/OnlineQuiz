using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ONLINEQUIZ.ENTITY;
using ONLINEQUIZ.HELPDATA;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
using ONLINEQUIZ.QL;
using System.Web.UI.WebControls;

namespace ONLINEQUIZ.DAL
{
    public class DSreg
    {
        connect1 con1 = new connect1();
        connect2 con2 = new connect2();
        SqlDataAdapter ad1;
        DataRow dr;
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
       
       
        //Inserting Student register values in to DataBase
        #region Inserting Student register values in to DataBase

        public void SRDInsert(SRegister srg)
        {
            try
            {
                con2.DBOpen();
                con2.cmd = new SqlCommand("SPSRVD", con2.con);
                con2.cmd.CommandType = CommandType.StoredProcedure;
                con2.cmd.Parameters.Add("@sid", SqlDbType.Decimal).Direction = ParameterDirection.Input;
                con2.cmd.Parameters["@sid"].Value = srg.Sid;
                con2.cmd.Parameters.Add("@n", SqlDbType.Int).Direction = ParameterDirection.Output;
                con2.cmd.ExecuteNonQuery();
                int n = Convert.ToInt32(con2.cmd.Parameters["@n"].Value);

                if (n >= 1)
                {
                    HttpContext.Current.Session["SRVD"] = n;
                }

                else
                {
                con2.DBOpen();
                con2.cmd = new SqlCommand("SPSTUREG", con2.con);
                con2.cmd.CommandType = CommandType.StoredProcedure;     
                                                                
                con2.cmd.Parameters.Add(new SqlParameter("@sname", srg.Sname));
                con2.cmd.Parameters.Add(new SqlParameter("@sid", srg.Sid));
                con2.cmd.Parameters.Add(new SqlParameter("@ssec", srg.Ssec));
                con2.cmd.Parameters.Add(new SqlParameter("@spwd", srg.Spwd));
                con2.cmd.Parameters.Add(new SqlParameter("@semail", srg.Semail));
                con2.cmd.Parameters.Add(new SqlParameter("@sphone", srg.Sphone));
                con2.cmd.ExecuteNonQuery();
                HttpContext.Current.Session["SRVD"] = 0;
            }
            }
            catch
            {
                MessageBox.Show("Contact Admin:SRD Error");
            }
            finally
            {
                con2.DBClose();
            }
        }

        #endregion

        //Verifying faculty login values in to DataBase
        #region Verifying faculty values in to DataBase

        public void DFLValues(FLogin fl)
        {
            try
            {
                con2.DBOpen();
                con2.cmd = new SqlCommand("SPFDCHK", con2.con);
                con2.cmd.CommandType = CommandType.StoredProcedure;
                con2.cmd.Parameters.Add("@fname", SqlDbType.NVarChar).Direction = ParameterDirection.Input;
                con2.cmd.Parameters.Add("@fpwd", SqlDbType.NVarChar).Direction = ParameterDirection.Input;
                con2.cmd.Parameters.Add("@fsubcode", SqlDbType.NVarChar).Direction = ParameterDirection.Input;
                con2.cmd.Parameters.Add("@n", SqlDbType.Int).Direction = ParameterDirection.Output;
                con2.cmd.Parameters["@fname"].Value = fl.Fname;
                con2.cmd.Parameters["@fpwd"].Value = fl.Fpwd;
                con2.cmd.Parameters["@fsubcode"].Value = fl.Fsubcode;
                con2.cmd.ExecuteNonQuery();
                int FCHK = Convert.ToInt32(con2.cmd.Parameters["@n"].Value);
                 HttpContext.Current.Session["FCHK"]=FCHK;

            }
            catch
            {
                MessageBox.Show("Contact Admin:DFL Error");
            }
            finally
            {
               
                con2.DBClose();
               
            }
        }

        #endregion

        //inserting faculty new password values in to DataBase
        #region inserting faculty new password values in to DataBase
        public void DFCPValues(FCPwd fcp)
        {

            try
            {
                con2.DBOpen();
                con2.cmd = new SqlCommand("SPFCPWD", con2.con);
                con2.cmd.CommandType = CommandType.StoredProcedure;
                con2.cmd.Parameters.Add(new SqlParameter("@fname", fcp.Fname));
                con2.cmd.Parameters.Add(new SqlParameter("@fpwd", fcp.Fpwd));
                con2.cmd.Parameters.Add(new SqlParameter("@fsubcode", HttpContext.Current.Session["Fsubcode"].ToString()));
                
                con2.cmd.ExecuteNonQuery();               
            }
            catch
            {
                MessageBox.Show("Contact Admin:DFCP Error");
            }
            finally
            {

                con2.DBClose();

            }

        }

        #endregion


        //inserting Questions in to DataBase
        #region inserting Questions in to DataBase

        public void DAQPaper(QuestionPaper qpr)
        {
            string subject=HttpContext.Current.Session["fsubcode"].ToString();
            try
            {
                string s1 = "select count(*) from GIT" + subject + " where qno="+qpr.Qno+" ";
                con1.DBReaderOpen1(s1);
                con1.DBReaderClose1();
                if (con1.x > 0)
                {
                    MessageBox.Show("The Q.No Entered Already Exists,View the Question Paper and Enter");
                }
                else
                {

                    con1.DBOpen();
                    con1.cmd = new SqlCommand();
                    con1.cmd.Connection = con1.cn;
                    con1.cmd.CommandText = "insert into GIT" + subject + " values(" + qpr.Qno + ",'" + qpr.Question + "','" + qpr.Option1 + "','" + qpr.Option2 + "','" + qpr.Option3 + "','" + qpr.Option4 + "','" + qpr.Answer + "')";
                    con1.cmd.ExecuteNonQuery();
                    con1.DBClose();
                    MessageBox.Show("1 Question Inserted suceefully");

                }

            }
            catch
            {
                MessageBox.Show("Contact Admin:DAQ error");
            }
            finally
            {
                
            }

        }

        #endregion


        //fill gridview for editing question paper         
        #region fill gridview for editing question paper

        public void Dfillcontrol(WebControl ctrl, string query)
        {
            con1.DBOpen();
            GridView control = (GridView)ctrl;
            string s="select * from GIT"+query+"" ;
            con1.da = new SqlDataAdapter(s, con1.cn);
            DataTable dt = new DataTable();
            con1.da.Fill(dt);
            control.DataSource = dt;
            control.DataBind();
            con1.DBClose();

        }

        #endregion


        //fill gridview for result
        #region fill gridview for result
        public void DfillcontrolRes(WebControl ctrl, string query)
        {
            con1.DBOpen();
            GridView control = (GridView)ctrl;
            string s = "select distinct * from RES" + query + "";
            con1.da = new SqlDataAdapter(s, con1.cn);
            DataTable dt = new DataTable();
            con1.da.Fill(dt);
            control.DataSource = dt;
            control.DataBind();
            con1.DBClose();
        }
        #endregion


        //Verifying Student login values in to DataBase
        #region Verifying Student login values in to DataBase
        public void DSLValues(SLogin sl)
        {
            string subject = HttpContext.Current.Session["code"].ToString();

            try
            {
                string s="select * from tblSRegister where sid="+sl.Sid+" and spwd='"+sl.Spwd+"'";
                con2.DBReaderOpen(s);
                if (con2.dr.Read())
                {
                    HttpContext.Current.Session["sname"] = con2.dr[0].ToString();
                    HttpContext.Current.Session["sec"] = con2.dr[2].ToString();
                    string id = sl.Sid.ToString();
                    string s1 = "select count(*) from RES" + subject + " where id='" + id + "'";
                    con1.DBReaderOpen1(s1);                    
                    con1.DBReaderClose1();
                   if (con1.x >= 1)
                    {
                       HttpContext.Current.Session["SCHK"] = 0;
                    }

                    else
                    {

                        HttpContext.Current.Session["SCHK"] = 1;
                    }
                }
                else
                {
                    HttpContext.Current.Session["SCHK"] = 2;
                }

            }
            catch(Exception ex)
            {
                MessageBox.Show("Contact Admin:DSFL Error"+ex);
            }
            finally
            {

                con2.DBReaderClose();

            }
        }
        #endregion

        //inserting Student new password values in to DataBase
        #region inserting Student new password values in to DataBase
        public void DSCPValues(SCPwd scp)
        {
            try
            {
                con2.DBOpen();
                con2.cmd = new SqlCommand("SPSCPWD", con2.con);
                con2.cmd.CommandType = CommandType.StoredProcedure;
                con2.cmd.Parameters.Add(new SqlParameter("@sname", scp.Sname));
                con2.cmd.Parameters.Add(new SqlParameter("@spwd", scp.Spwd));
                con2.cmd.Parameters.Add(new SqlParameter("@sid", HttpContext.Current.Session["sid"].ToString()));

                con2.cmd.ExecuteNonQuery();
            }
            catch
            {
                MessageBox.Show("Contact Admin:DSCP Error");
            }
            finally
            {

                con2.DBClose();

            }

        }
        #endregion


        //creating dynamic exam table to student
        #region creating dynamic exam table to student
        public void DSTC()
        {
            string SDT = HttpContext.Current.Session["sid"].ToString();
            string cre = "create table tech" + SDT + " (qno int,question varchar(1000),option1 varchar(500),option2 varchar(500),option3 varchar(500),option4 varchar(500),answer int)";
            con1.cmd = new SqlCommand(cre, con1.cn);
            con1.DBCmdOpen(cre);
            con1.DBCmdClose();
            string cre1 = "create table techr" + SDT + " (qno int,question varchar(1000),option1 varchar(500),option2 varchar(500),option3 varchar(500),option4 varchar(500),rans int,sans int,rx varchar(500))";
            con1.cmd = new SqlCommand(cre1, con1.cn);
            con1.DBCmdOpen(cre1);
            con1.DBCmdClose();
        }
        #endregion


        //inserting random questions to student dynamic table
        #region inserting random questions to student dynamic table
        public void DSRQ(int y)
        {

            string SDT = HttpContext.Current.Session["sid"].ToString();
            string s11 = HttpContext.Current.Session["code"].ToString();
            string s2 = "select count(*) from GIT" + s11 + " ";
            con1.DBReaderOpen1(s2);
            con1.DBReaderClose1();
            HttpContext.Current.Session["IQTE"] = con1.x;
            if (con1.x > 0)
            {
                string s1 = "insert into tech" + SDT + "  select * from GIT" + s11 + " where qno=" + y + "";
                con1.cmd = new SqlCommand(s1, con1.cn);
                con1.DBCmdOpen(s1);
                con1.DBCmdClose();
            }
        }
        #endregion


        //Verifying admin login values in to DataBase
        #region Verifying admin login values in to DataBase
        public void DALValues(ALogin al)
        {
           
            try
            {
                con2.DBOpen();
                con2.cmd = new SqlCommand("SPADCHK", con2.con);
                con2.cmd.CommandType = CommandType.StoredProcedure;
                con2.cmd.Parameters.Add("@aname", SqlDbType.NVarChar).Direction = ParameterDirection.Input;
                con2.cmd.Parameters.Add("@apwd", SqlDbType.NVarChar).Direction = ParameterDirection.Input;
                con2.cmd.Parameters.Add("@n", SqlDbType.Int).Direction = ParameterDirection.Output;
                con2.cmd.Parameters["@aname"].Value =al.Aname;
                con2.cmd.Parameters["@apwd"].Value = al.Apwd;
                con2.cmd.ExecuteNonQuery();
                int ACHK = Convert.ToInt32(con2.cmd.Parameters["@n"].Value);
                HttpContext.Current.Session["ACHK"] = ACHK;

            }
            catch
            {
                MessageBox.Show("Contact Admin:AFL Error");
            }
            finally
            {

                con2.DBClose();

            }
        }
        #endregion


        //drop student dynamic table from admin
        #region drop student dynamic table from admin
        public void DADST(ADST sd)
        {
            string s="drop table tech"+sd.Sid+"";
            con1.cmd = new SqlCommand(s, con1.cn);
            con1.DBCmdOpen(s);
            con1.DBCmdClose();
            string s1 = "drop table techr" + sd.Sid + "";
            con1.cmd = new SqlCommand(s1, con1.cn);
            con1.DBCmdOpen(s1);
            con1.DBCmdClose();

        }
        #endregion


        //drop student dynamic table from Student in before exam page
        #region drop student dynamic table from Student in before exam page
        public void DDST(decimal s)
        {
            string s1 = "drop table tech" + s + "";
            con1.cmd = new SqlCommand(s1, con1.cn);
            con1.DBCmdOpen(s1);
            con1.DBCmdClose();
            string s2 = "drop table techr" + s + "";
            con1.cmd = new SqlCommand(s2, con1.cn);
            con1.DBCmdOpen(s2);
            con1.DBCmdClose();
        }
        #endregion



        //adding faculty to database from admin
        #region adding faculty to database from admin
        public void DAFADD(FLogin fl)
        {
            try
            {
                con2.DBOpen();
                con2.cmd = new SqlCommand("SPAFADD", con2.con);
                con2.cmd.CommandType = CommandType.StoredProcedure;
                con2.cmd.Parameters.Add(new SqlParameter("@fname", fl.Fname));
                con2.cmd.Parameters.Add(new SqlParameter("@fpwd", fl.Fpwd));
                con2.cmd.Parameters.Add(new SqlParameter("@fsubcode", fl.Fsubcode));

                con2.cmd.ExecuteNonQuery();
            }
            catch
            {
                MessageBox.Show("Contact Admin:DAFADD Error");
            }
            finally
            {

                con2.DBClose();

            }
        }
        #endregion

        //deleting faculty based on subcode from admin
        #region deleting faculty based on subcode from admin
        public void DADF(ADF df)
        {
            string s1 = "delete from tblflogin where fsubcode='"+df.Fsubcode+"'";
            con2.cmd = new SqlCommand(s1, con2.con);
            con2.DBCmdOpen(s1);
            con2.DBCmdClose();
        }
        #endregion


        //drop the student dynamic table by student at sign out in result page
        #region drop the student dynamic table by student at sign out in result page
        public void DSDD(SDDtbl sdt)
        {
            string s1 = "drop table tech" + sdt.Id + "";
            con1.cmd = new SqlCommand(s1, con1.cn);
            con1.DBCmdOpen(s1);
            con1.DBCmdClose();
            string s2 = "drop table techr" + sdt.Id + "";
            con1.cmd = new SqlCommand(s2, con1.cn);
            con1.DBCmdOpen(s2);
            con1.DBCmdClose();

        }
        #endregion

        //deleteting the student result by faculty by student id
        #region deleteting the student result by faculty by student id
        public void DFDSR(string id)
        {
            string FSC = HttpContext.Current.Session["Fsubcode"].ToString();
            string s="delete from RES"+FSC+" where id='"+id+"'";
            con1.cmd = new SqlCommand(s, con1.cn);
            con1.DBCmdOpen(s);
            con1.DBCmdClose();


        }
        #endregion

        //deleteting all the student result by faculty 
        #region deleteting all the student result by faculty
        public void DFDASR(string sec1)
        {
            string FSC = HttpContext.Current.Session["Fsubcode"].ToString();
            string s = "delete from RES" + FSC + " where sec='"+sec1+"'";
            con1.cmd = new SqlCommand(s, con1.cn);
            con1.DBCmdOpen(s);
            con1.DBCmdClose();

        }
        #endregion


        //inserting setexam values by admin
        #region inserting setexam values by admin
        public void DAESET(AExamSet ae)
        {
          try
          {
            string s1 = "select count(*) from tblsetexam ";
            con2.DBReaderOpen1(s1);
            con2.DBReaderClose1();
            if (con2.x > 0)
            {
                MessageBox.Show("Some Exam Already Set,Delete  and Enter New Code");
            }
            else
            {
                string s = "insert into tblsetexam values('" + ae.Subcode + "'," + ae.Time + ")";
                 con2.cmd = new SqlCommand(s, con2.con);
                 con2.DBCmdOpen(s);
                 con2.DBCmdClose();
                 MessageBox.Show("Exam Set Successfully");
            }
            
         }  
            catch
                {
                    MessageBox.Show("Contact Admin:AESET error");
                }
                finally
                {
                   
                }
            

        }
        #endregion


        //deleting setexam values by admin
        #region deleting setexam values by admin
        public void DADESET()
        {
            string s1 = "select count(*) from tblsetexam ";
            con2.DBReaderOpen1(s1);
            con2.DBReaderClose1();
            if (con2.x > 0)
            {
                string s = "delete from tblsetexam";
                con2.cmd = new SqlCommand(s, con2.con);
                con2.DBCmdOpen(s);
                con2.DBCmdClose();
                MessageBox.Show("Successfully deleted");
            }
        }
        #endregion

        //admin set today exam and time
        #region admin set exam and time
        public void DSESET()
        {
            string s1 = "select count(*) from tblsetexam ";
            con2.DBReaderOpen1(s1);
            con2.DBReaderClose1();
            if (con2.x > 0)
            {
                string s = "select * from tblsetexam";
                con2.DBReaderOpen(s);
                if (con2.dr.Read())
                {
                    HttpContext.Current.Session["code"] = con2.dr[0].ToString();
                    HttpContext.Current.Session["time"] = con2.dr[1].ToString();
                    string q1 = HttpContext.Current.Session["code"].ToString();
                    string q2 = HttpContext.Current.Session["time"].ToString();
                    con2.DBReaderClose();
                }
            }
            else
            {
                MessageBox.Show("Exam is not Set by Admin");
            }

        }
        #endregion

        //faculty set number of questions for exam paper
        #region faculty set number of questions for exam paper
        public void DFSQ(FSetQ fsq)
        {
            string subject=HttpContext.Current.Session["fsubcode"].ToString();
            try
            {
                string s1 = "select count(*) from tblfsetnoq where subject='" + subject + "' ";
                con1.DBReaderOpen1(s1);
                con1.DBReaderClose1();
                if (con1.x > 0)
                {
                    MessageBox.Show("Some No is Set Earlier, Delete and Enter New");
                }
                else
                {

                    con1.DBOpen();
                    con1.cmd = new SqlCommand();
                    con1.cmd.Connection = con1.cn;
                    con1.cmd.CommandText = "insert into tblfsetnoq values('" + subject + "'," + fsq.Noq + ")";
                    con1.cmd.ExecuteNonQuery();
                    con1.DBClose();
                    MessageBox.Show("No of Questions set suceefully");

                }

            }
            catch { }
            finally { }
        }
        #endregion

        //faculty delete number of questions for exam paper
        #region faculty delete number of questions for exam paper
        public void DFDSETQ()
        {
            string subject = HttpContext.Current.Session["fsubcode"].ToString();
            string s1 = "select count(*) from tblfsetnoq where subject='" + subject + "' ";
            con1.DBReaderOpen1(s1);
            con1.DBReaderClose1();
            if (con1.x > 0)
            {
                string s = "delete from tblfsetnoq where subject='" + subject + "'";
                con1.cmd = new SqlCommand(s, con1.cn);
                con1.DBCmdOpen(s);
                con1.DBCmdClose();
                MessageBox.Show("Successfully deleted");
            }

        }
        #endregion

        //Faculty  set no questions  check by faculty
        #region Faculty  set no questions  check by faculty
        public void DFQSC()
        {
            string subject = HttpContext.Current.Session["fsubcode"].ToString();
            string s1 = "select count(*) from GIT" + subject + " ";
            con1.DBReaderOpen1(s1);
            con1.DBReaderClose1();
            if (con1.x > 0)
            {
                HttpContext.Current.Session["FQSC"] = con1.x;
            }
        }
        #endregion


        //student  check and get no questions set by faculty
        #region student  check and get no questions set by faculty
        public void DSGFSQ()
        {
            string s11 = HttpContext.Current.Session["code"].ToString();
            string s1 = "select count(*) from tblfsetnoq where subject='" +s11+ "' ";
            con1.DBReaderOpen1(s1);
            con1.DBReaderClose1();
            if (con1.x > 0)
            {
                string s = "select * from tblfsetnoq where subject='" + s11 + "'";
                con1.DBReaderOpen(s);
                if (con1.dr.Read())
                {
                    HttpContext.Current.Session["FSnofQ"] = con1.dr[1].ToString();
                    string q1 = HttpContext.Current.Session["FSnofQ"].ToString();
                    con1.DBReaderClose();
                }
            }
            else
            {
                HttpContext.Current.Session["FSnofQ"] = "10";
            }
        }
        #endregion

        //student checks whether questions for the exam in table are zero(redirect to home page) or more
        #region student checks whether questions for the exam in table are zero(redirect to home page) or more
        public void DSGFQSC()
        {
            string subject = HttpContext.Current.Session["code"].ToString();
            string s1 = "select count(*) from GIT" + subject + " ";
            con1.DBReaderOpen1(s1);
            con1.DBReaderClose1();
            if (con1.x > 0)
            {
                HttpContext.Current.Session["SFQSC"] = con1.x;
            }
        }
        #endregion

      
        public void DSR(string r)
        {
            string s1 = "select count(*) from techr" + r + " ";
            con1.DBReaderOpen1(s1);
            con1.DBReaderClose1();
            
            HttpContext.Current.Session["result1"] = "0";
            for (int i = 0; i < con1.x; i++)
            {
                ad1 = new SqlDataAdapter("select qno,rans,sans from techr" +r + "", con1.cn);
                ad1.Fill(ds, "abc");
                dt = ds.Tables["abc"];
                dr = dt.Rows[i];
                int a =Convert.ToInt32(dr[1].ToString());
                int b = Convert.ToInt32(dr[2].ToString());
                int aa = Convert.ToInt32(HttpContext.Current.Session["sid"].ToString());
                int up = Convert.ToInt32(dr[0].ToString());
                
                if (a == b)
                {
                    HttpContext.Current.Session["result1"] = Convert.ToString(Convert.ToInt32(HttpContext.Current.Session["result1"].ToString()) + 1);
                    string str1 = "update  techr" + aa + "  set  rx='Correct Ans' where qno=" + up + "";                 
                    con1.cmd = new SqlCommand(str1, con1.cn);
                    con1.DBCmdOpen(str1);
                    con1.DBCmdClose();
                }
                else
                {
                    string str1 = "update  techr" + aa + "  set  rx='Wrong Ans' where qno=" + up + "";
                    con1.cmd = new SqlCommand(str1, con1.cn);
                    con1.DBCmdOpen(str1);
                    con1.DBCmdClose();
                }
            }
           
           
                }


        public void DSRTOF()
        {
            int aa =Convert.ToInt32(HttpContext.Current.Session["sid"].ToString());
            string code = HttpContext.Current.Session["code"].ToString();
            string str1 = "update  RES" + code + "  set  marks=" + Convert.ToInt32(HttpContext.Current.Session["result1"].ToString()) + " where id=" + aa + "";
            con1.cmd = new SqlCommand(str1, con1.cn);
            con1.DBCmdOpen(str1);
            con1.DBCmdClose();

            
        }


        public void DfillcontrolSPR(WebControl ctrl, decimal query)
        {

            con2.DBOpen();
            GridView control = (GridView)ctrl;
            string s = "select sid,sname,spwd from tblSRegister where sid="+query+"";
            con2.da = new SqlDataAdapter(s, con2.con);
            DataTable dt1 = new DataTable();
            con2.da.Fill(dt1);
            control.DataSource = dt1;
            control.DataBind();
            con2.DBClose();

        }


        public void DSSLCHK()
        {
            try
            {
                string s1 = HttpContext.Current.Session["code"].ToString();
                string sname = HttpContext.Current.Session["sname"].ToString();
                string aa = HttpContext.Current.Session["sid"].ToString();
                string sec = HttpContext.Current.Session["sec"].ToString();
                string str = "insert into RES" + s1 + " values('" + aa + "','" + sname + "','" + sec + "',0)";
                con1.cmd = new SqlCommand(str, con1.cn);
                con1.DBCmdOpen(str);
                con1.DBCmdClose();
            }
            catch { }
            finally { }
        }
        public void DfillcontrolEQ(WebControl ctrl, string query)
        {
            con1.DBOpen();
            GridView control = (GridView)ctrl;
            string s = "select sans from techr"+query+"";
            con1.da = new SqlDataAdapter(s, con1.cn);
            DataTable dt1 = new DataTable();
            con1.da.Fill(dt1);
            control.DataSource = dt1;
            control.DataBind();
            con1.DBClose();

        }

        public void DfillcontrolFDTLS(WebControl ctrl)
        {
            con2.DBOpen();
            GridView control = (GridView)ctrl;
            string s = "select fname,fsubcode from tblflogin";
            con2.da = new SqlDataAdapter(s, con2.con);
            DataTable dt2 = new DataTable();
            con2.da.Fill(dt2);
            control.DataSource = dt2;
            control.DataBind();
            con2.DBClose();

        }

        public void DfillcontrolRP(WebControl ctrl)
        {
            int aa =Convert.ToInt16(HttpContext.Current.Session["sid"].ToString());
            con1.DBOpen();
            GridView control = (GridView)ctrl;
            string s = "select question,option1,option2,option3,option4,rx from techr"+aa+"";
            con1.da = new SqlDataAdapter(s, con1.cn);
            DataTable dt3 = new DataTable();
            con1.da.Fill(dt3);
            control.DataSource = dt3;
            control.DataBind();
            con1.DBClose();
        }
    }
}