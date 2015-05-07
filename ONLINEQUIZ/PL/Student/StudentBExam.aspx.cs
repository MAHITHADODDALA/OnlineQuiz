using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ONLINEQUIZ.HELPDATA;
using System.Data;
using System.Data.SqlClient;
using ONLINEQUIZ.BAL;

namespace ONLINEQUIZ.PL.Student
{
    public partial class StudentBExam : System.Web.UI.Page
    {      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["sid"] == null)
            {
                Response.Redirect("~/HomePage.aspx");

            }
        }
        static int[] positions = new int[5000];
        BSreg bsr = new BSreg();
        protected void btntaketest_Click(object sender, EventArgs e)
        {
            //btntaketest.Visible = false;
            try
            {
                decimal s=Convert.ToDecimal( Session["sid"].ToString());
                bsr.BDST(s);              
               
            }
            catch
            {
               // lblerrds.Visible = true;
            }
            finally
            {
                try
                {
                    bsr.BSTC();
                    bsr.BSGFSQ();
                    bsr.BSGFQSC();
                    int fsnoq = Convert.ToInt32(Session["FSnofQ"].ToString());
                    int etqc = Convert.ToInt32(Session["SFQSC"].ToString());

                    for (int i = 0; i < fsnoq; i++)
                    {
                        positions[i] = 0;
                    }

                    for (int i = 1; i <= fsnoq; )
                    {

                        Random x = new Random();
                        int y = x.Next(1, etqc);
                        // check whether the number is already in the array
                        bool found = false;
                        for (int j = 1; j <= i; j++)
                        {
                            if (y == positions[j])
                            {
                                found = true;
                                break;
                            }
                        }

                        if (!found)
                        {
                            positions[i] = y;
                            bsr.BSRQ(y);
                            int IQTE = Convert.ToInt32(Session["IQTE"].ToString());
                            if (IQTE > 0)
                            {
                                i++;
                            }
                            else
                            {
                                Response.Write("Exam paper is not available contact admin");
                                System.Threading.Thread.Sleep(4000);
                                Response.Redirect("~/HomePage.aspx");
                                break;
                            }
                        }
                        // end of for

                    }
                    Session["counter"] = "0";
                    Session["temp"] = "0";
                    Session["cans"] = "0";
                    Session["res"] = "0";
                    System.Threading.Thread.Sleep(4000);
                    Response.Redirect("~/PL/Student/StudentExamPage.aspx");
                }
                catch { }
                finally { }
                
            }

        }
        
    }
}