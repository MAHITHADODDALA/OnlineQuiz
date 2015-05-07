using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using ONLINEQUIZ.HELPDATA;
using ONLINEQUIZ.BAL;
namespace ONLINEQUIZ.PL.Student
{
    public partial class StudentExamPage : System.Web.UI.Page
    {
        BSreg bsr = new BSreg();
        // SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connection"]);
        connect1 con1 = new connect1();
        SqlConnection con = new SqlConnection("Data Source=RAVI-PC;Initial Catalog=college;Integrated Security=True");
        SqlDataAdapter ad1, ad2, ad3, ad4;
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        DataTable dt2 = new DataTable();
        DataTable dt3 = new DataTable();

        DataRow dr, dr1, dr2,dr3;
        SqlCommand cmd = new SqlCommand();
        int tq;
        int y;
        int s;
        int stime = 0;
        int z = 0;
        string aa;
        int[] positions = new int[5];

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["sid"] == null)
            {
                Response.Redirect("~/HomePage.aspx");

            }
            RadioButton1.Attributes.Add("onclick", "s1(" + RadioButton1.ClientID + ");");
            RadioButton2.Attributes.Add("onclick", "s2(" + RadioButton2.ClientID + ");");
            RadioButton3.Attributes.Add("onclick", "s3(" + RadioButton3.ClientID + ");");
            RadioButton4.Attributes.Add("onclick", "s4(" + RadioButton4.ClientID + ");"); 
    
            Label10.Text = "You Logged in as    :" + Session["sid"].ToString();
            Label11.Text = "Your Current Exam is:" + Session["code"].ToString();
            Label12.Text = "Your Name is        :" + Session["sname"].ToString();

        }

        protected void btnnext_Click(object sender, EventArgs e)
        {
            selectedquestion();
        }

        protected void Timer2_Tick(object sender, EventArgs e)
        {
            Label8.Text = "Time                                 :" + DateTime.Now.ToString();

        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            int s3;
            if (RadioButton1.Checked)
            {
                s3 = 0;
                updatenewtech(s3);

            }
            else if (RadioButton2.Checked)
            {
                s3 = 1;
                updatenewtech(s3);
            } 
            else if (RadioButton3.Checked)
            {
                s3 = 2;
                updatenewtech(s3);
            }
            else if (RadioButton4.Checked)
            {
                s3 = 3;
                updatenewtech(s3);

            }
            else { s3 = -1;
            updatenewtech(s3);
            }

            try
            {

            GridView1.PageIndex = e.NewPageIndex;
            int QC = e.NewPageIndex;
            string s = Session["sid"].ToString();
            bsr.BfillcontrolEQ(GridView1, s);

            
                aa = Session["sid"].ToString();
                ad4 = new SqlDataAdapter("select qno,question,option1,option2,option3,option4,rans,sans from techr" + aa + "", con);
                ad4.Fill(ds, "gq");
                dt2 = ds.Tables["gq"];
                Session["counter"] = QC;
                int N = Convert.ToInt32(Session["counter"].ToString());
                dr2 = dt2.Rows[Convert.ToInt16(Session["counter"].ToString())];
                Session["dr"] = dr2[0].ToString();
                int sno = Convert.ToInt16(Session["counter"].ToString()) + 1;
                int fsnoq = Convert.ToInt32(Session["FSnofQ"].ToString());
                Label1.Text = "Q.NO:" + sno.ToString() + "/" + fsnoq;
                Label2.Text = dr2[1].ToString();
                RadioButton1.Text = dr2[2].ToString();
                RadioButton2.Text = dr2[3].ToString();
                RadioButton3.Text = dr2[4].ToString();
                RadioButton4.Text = dr2[5].ToString();
                RadioButton1.Checked = false;
                RadioButton2.Checked = false;
                RadioButton3.Checked = false;
                RadioButton4.Checked = false;
                if (Convert.ToInt32(dr2[7].ToString()) == 1)
                    RadioButton1.Checked = true;
                if (Convert.ToInt32(dr2[7].ToString()) == 2)
                    RadioButton2.Checked = true;
                if (Convert.ToInt32(dr2[7].ToString()) == 3)
                    RadioButton3.Checked = true;
                if (Convert.ToInt32(dr2[7].ToString()) == 4)
                    RadioButton4.Checked = true;

            }
            catch { }
            finally { }

        }
        private void GetQuestion()
        {
            try
            {
                aa = Session["sid"].ToString();
                ad1 = new SqlDataAdapter("select qno,question,option1,option2,option3,option4,answer from tech" + aa + "", con);
                ad1.Fill(ds, "nxtq");
                dt = ds.Tables["nxtq"];
                dr = dt.Rows[Convert.ToInt16(Session["counter"].ToString())];
                Session["dr"] = dr[0].ToString();
                int sno = Convert.ToInt16(Session["counter"].ToString()) + 1;
                int fsnoq = Convert.ToInt32(Session["FSnofQ"].ToString());
                Label1.Text = "Q.NO:" + sno.ToString() + "/" + fsnoq;
                Label2.Text = dr[1].ToString();
                //rbtnAns.Items.Add(dr[2].ToString());
                //rbtnAns.Items.Add(dr[3].ToString());
                //rbtnAns.Items.Add(dr[4].ToString());
                //rbtnAns.Items.Add(dr[5].ToString());

                string insrt1 = "select count(*) from techr" + aa + " where qno=" + Convert.ToInt32(Session["dr"].ToString()) + "";
                SqlCommand cmd9 = new SqlCommand(insrt1, con);
                con.Open();
                int x9 = Convert.ToInt32(cmd9.ExecuteScalar());
                cmd9.ExecuteNonQuery();

                con.Close();
                if (x9 > 0)
                {
                    ad3 = new SqlDataAdapter("select qno,question,option1,option2,option3,option4,rans,sans from techr" + aa + " where qno=" + Convert.ToInt32(Session["dr"].ToString()) + "", con);
                    ad3.Fill(ds, "prvq");
                    dt1 = ds.Tables["prvq"];
                    int k;
                    k = Convert.ToInt16(Session["counter"].ToString());
                    //dr1= ds.Tables["aaaa"].Rows[k];
                    dr1 = dt1.Rows[0];
                    Label2.Text = dr[1].ToString();
                    RadioButton1.Text = dr1[2].ToString();
                    RadioButton2.Text = dr1[3].ToString();
                    RadioButton3.Text = dr1[4].ToString();
                    RadioButton4.Text = dr1[5].ToString();
                    RadioButton1.Checked = false;
                    RadioButton2.Checked = false;
                    RadioButton3.Checked = false;
                    RadioButton4.Checked = false;
                    if (Convert.ToInt32(dr1[7].ToString()) == 1)
                    {
                        RadioButton1.Checked = true;

                    }
                    if (Convert.ToInt32(dr1[7].ToString()) == 2)
                    {
                        RadioButton2.Checked = true;

                    }
                    if (Convert.ToInt32(dr1[7].ToString()) == 3)
                    {
                        RadioButton3.Checked = true;

                    }
                    if (Convert.ToInt32(dr1[7].ToString()) == 4)
                    {
                        RadioButton4.Checked = true;

                    }
                }
                else
                {
                    for (int i = 0; i < 5; i++)
                    {
                        positions[i] = 0;
                    }

                    for (int i = 1; i <= 4; )
                    {

                        Random x = new Random();
                        int y1 = x.Next(2, 6);
                        // check whether the number is already in the array
                        bool found = false;
                        for (int j = 1; j <= i; j++)
                        {
                            if (y1 == positions[j])
                            {
                                found = true;
                                break;
                            }
                        }

                        if (!found)
                        {
                            positions[i] = y1;

                            i++;

                        }
                        // end of for

                    }
                    RadioButton1.Text = dr[positions[1]].ToString();
                    RadioButton2.Text = dr[positions[2]].ToString();
                    RadioButton3.Text = dr[positions[3]].ToString();
                    RadioButton4.Text = dr[positions[4]].ToString();
                    Label4.Text = dr[6].ToString();
                    y = Convert.ToInt16(Label4.Text);

                    if (positions[1] == (y + 1))
                    {
                        Session["cans"] = "1";
                        Label13.Visible = true;
                        Label14.Visible = false;
                        Label15.Visible = false;
                        Label16.Visible = false;
                    }
                    if (positions[2] == (y + 1))
                    {
                        Session["cans"] = "2";
                        Label14.Visible = true;
                        Label13.Visible = false;
                        Label15.Visible = false;
                        Label16.Visible = false;
                    }
                    if (positions[3] == (y + 1))
                    {
                        Session["cans"] = "3";
                        Label15.Visible = true;
                        Label14.Visible = false;
                        Label13.Visible = false;
                        Label16.Visible = false;
                    }
                    if (positions[4] == (y + 1))
                    {
                        Session["cans"] = "4";
                        Label16.Visible = true;
                        Label15.Visible = false;
                        Label14.Visible = false;
                        Label13.Visible = false;
                    }
                    Label5.Text = Session["cans"].ToString();
                    int q = Convert.ToInt32(dr[0].ToString());
                    int insr = Convert.ToInt32(Label5.Text);
                    
                    string insrt = "insert into techr" + aa + "(qno,question,option1,option2,option3,option4,rans,sans,rx) values(" + q + ",'" + Label2.Text + "','" + RadioButton1.Text + "','" + RadioButton2.Text + "','" + RadioButton3.Text + "','" + RadioButton4.Text + "'," + insr + ",0,'0')";
                    cmd = new SqlCommand(insrt, con1.cn);
                    con1.DBCmdOpen(insrt);
                    con1.DBCmdClose();
                    string s = Session["sid"].ToString();
                    bsr.BfillcontrolEQ(GridView1, s);

                }
            }
            catch { }
            finally { }
        }
        private void updatenewtech(int s)
        {
            try
            {
                aa = Session["sid"].ToString();
                int up = Convert.ToInt32(Session["dr"].ToString());
                string str1 = "update  techr" + aa + "  set  sans=" + (s + 1) + " where qno=" + up + "";
                SqlCommand cmd4 = new SqlCommand(str1, con);
                con.Open();
                cmd4.ExecuteNonQuery();
                con.Close();
            }
            catch { }
            finally { }
        }

        private void selectedquestion()
        {
            int y2;
            y2 = Convert.ToInt32(Session["cans"].ToString());
            if (RadioButton1.Checked)
            {
                s = 0;
                updatenewtech(s);

            } else if (RadioButton2.Checked)
            {
                s = 1;
                updatenewtech(s);
            } else if (RadioButton3.Checked)
            {
                s = 2;
                updatenewtech(s);
            }
            else if (RadioButton4.Checked)
            {
                s = 3;
                updatenewtech(s);

            }
            else
            {
                s = -1;
                updatenewtech(s);
            }


            //  s = rbtnAns.SelectedIndex;
            //   rbtnAns.Items.Clear();
            y2 = 0;
            Session["cans"] = "0";

            //  aa = Convert.ToInt16(Session["id"].ToString());
            int sno = Convert.ToInt16(Session["counter"].ToString()) + 1;

            aa = Session["sid"].ToString();

            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;
            string noq = "select count(*) from tech" + aa + "";
            SqlCommand cmd2 = new SqlCommand(noq, con);
            con.Open();
            tq = Convert.ToInt16(cmd2.ExecuteScalar());
            cmd2.ExecuteNonQuery();
            con.Close();
            if (Convert.ToInt16(Session["counter"].ToString()) <= tq)
            {
                Session["counter"] = Convert.ToString(Convert.ToInt32(Session["counter"].ToString()) + 1);
                if (Convert.ToInt32(Session["counter"].ToString()) < tq)
                {
                    GetQuestion();

                }
                else
                {
                    if (Convert.ToInt16(Session["counter"].ToString()) == tq)
                    {
                        Session["counter"] = 0;
                        Response.Redirect("~/PL/Student/StudentResultPage.aspx");
                    }
                }
            }

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

            Response.Redirect("~/PL/Student/StudentResultPage.aspx");
        }

        protected void btnstartexam_Click(object sender, EventArgs e)
        {
            try
            {
                btnstartexam.Visible = false;
                Timer2.Enabled = true;
                Timer2.Interval = 1000;
                Label6.Visible = true;
                Label7.Visible = true;
                Label8.Visible = true;
                DateTime dt = new DateTime();
                Label6.Text = "Your logged at                   :" + DateTime.Now.ToString();
                dt = DateTime.Now.ToLocalTime();
                Label7.Text = "You will be logged out at    :" + dt.AddMinutes(Convert.ToInt32(Session["time"].ToString())).ToString();

                Label1.Visible = true;
                Label2.Visible = true;
                RadioButton1.Visible = true;
                RadioButton2.Visible = true;
                RadioButton3.Visible = true;
                RadioButton4.Visible = true;
                btnnext.Visible = true;
                btnskip.Visible = true;
                GetQuestion();
                stime = Convert.ToInt32(Session["time"].ToString());
                stime = stime * 60000;
                Timer1.Enabled = true;
                Timer1.Interval = stime;
            }
            catch { }
            finally { }


        }
        protected void btnskip_Click(object sender, EventArgs e)
        {

            // int y3;
            int s3;
            //y3 = Convert.ToInt32(Session["dr"].ToString());
            //ad5 = new SqlDataAdapter("select sans from techr" + aa + " where qno=" + Convert.ToInt32(Session["dr"].ToString()) + "", con);
            //ad5.Fill(ds, "prvq");
            //dt3 = ds.Tables["prvq"];
            //dr3 = dt3.Rows[0];


            if (RadioButton1.Checked)
            {
                s3 = 0;
                updatenewtech(s3);

            } else if (RadioButton2.Checked)
            {
                s3 = 1;
                updatenewtech(s3);
            } else  if (RadioButton3.Checked)
            {
                s3 = 2;
                updatenewtech(s3);
            } else  if (RadioButton4.Checked)
            {
                s3 = 3;
                updatenewtech(s3);

            }
            else
            {
                s3 = -1;
                updatenewtech(s3);
            }


            //  s = rbtnAns.SelectedIndex;
            //   rbtnAns.Items.Clear();
            //y3 = 0;


            try
            {
                aa = Session["sid"].ToString();
                ad2 = new SqlDataAdapter("select qno,question,option1,option2,option3,option4,rans,sans from techr" + aa + "", con);
                ad2.Fill(ds, "prvq");
                dt3 = ds.Tables["prvq"];
                Session["counter"] = Convert.ToString(Convert.ToInt32(Session["counter"].ToString()) - 1);
                int N = Convert.ToInt32(Session["counter"].ToString());
                if (N == -1)
                {
                    Session["counter"] = "0";
                }
                dr3 = dt3.Rows[Convert.ToInt16(Session["counter"].ToString())];
                Session["dr"] = dr3[0].ToString();
                int sno = Convert.ToInt16(Session["counter"].ToString()) + 1;
                int fsnoq = Convert.ToInt32(Session["FSnofQ"].ToString());
                Label1.Text = "Q.NO:" + sno.ToString() + "/" + fsnoq;
                Label2.Text = dr3[1].ToString();
                RadioButton1.Text = dr3[2].ToString();
                RadioButton2.Text = dr3[3].ToString();
                RadioButton3.Text = dr3[4].ToString();
                RadioButton4.Text = dr3[5].ToString();
                RadioButton1.Checked = false;
                RadioButton2.Checked = false;
                RadioButton3.Checked = false;
                RadioButton4.Checked = false;
                if (Convert.ToInt32(dr3[7].ToString()) == 1)
                    RadioButton1.Checked = true;
                if (Convert.ToInt32(dr3[7].ToString()) == 2)
                    RadioButton2.Checked = true;
                if (Convert.ToInt32(dr3[7].ToString()) == 3)
                    RadioButton3.Checked = true;
                if (Convert.ToInt32(dr3[7].ToString()) == 4)
                    RadioButton4.Checked = true;

            }
            catch { }
            finally { }
        }

    }
}