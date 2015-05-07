using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using ONLINEQUIZ.ENTITY;
using ONLINEQUIZ.IL;
using ONLINEQUIZ.DAL;
using System.Web.UI.WebControls;

namespace ONLINEQUIZ.BAL
{
    public class BSreg : Idata
    {
        //sending BAl SRD to DAL SRD
        DSreg dsr = new DSreg();
        public void BSRDInsert(SRegister srg)
        {
            dsr.SRDInsert(srg);
        }

        public void BFLValues(FLogin fl)
        {

            dsr.DFLValues(fl);

        }

        public void BFCPValues(FCPwd fcp)
        {
            dsr.DFCPValues(fcp);
        }
        public void BAQPaper(QuestionPaper qpr)
        {
            dsr.DAQPaper(qpr);
        }

        public void Bfillcontrol(WebControl ctrl, string que)
        {
            dsr.Dfillcontrol(ctrl, que);
        }
        public void BfillcontrolRes(WebControl ctrl, string que)
        {
            dsr.DfillcontrolRes(ctrl, que);
        }

        public void BSLValues(SLogin sl)
        {
            dsr.DSLValues(sl);
        }

        public void BSCPValues(SCPwd scp)
        {
            dsr.DSCPValues(scp);
        }

        public void BSTC()
        {
            dsr.DSTC();
        }
        public void BSRQ(int y)
        {
            dsr.DSRQ(y);
        }


        public void BALValues(ALogin al)
        {
            dsr.DALValues(al);
        }


        
        public void BADST(ADST sd)
        {
            dsr.DADST(sd);
        }

        public void BDST(decimal s)
        {
            dsr.DDST(s);
        }


        public void BAFADD(FLogin fl)
        {
            dsr.DAFADD(fl);
        }
                
        public void BADF(ADF df)
        {
            dsr.DADF(df);
        }


        public void BSDD(SDDtbl sdt)
        {
            dsr.DSDD(sdt);
        }


        public void BFDSR(string id)
        {
            dsr.DFDSR(id);
        }


        public void BFDASR(string  sec1)
        {
            dsr.DFDASR(sec1);
        }




        public void BAESET(AExamSet ae)
        {
            dsr.DAESET(ae);
           
        }

     
        public void BADESET()
        {
            dsr.DADESET();
        }

        public void BSESET()
        {
            dsr.DSESET();
        }

        public void BFSQ(FSetQ fsq)
        {
            dsr.DFSQ(fsq);
        }

        public void BFDSETQ()
        {
            dsr.DFDSETQ();
        }

        public void BFQSC()
        {
            dsr.DFQSC();
        }
        public void BSGFSQ()
        {
            dsr.DSGFSQ();
        }
        public void BSGFQSC()
        {
            dsr.DSGFQSC();
        }

        public void BSR(string r)
        {
            dsr.DSR(r);
        }
        public void BSRTOF()
        {
            dsr.DSRTOF();
        }



        public void BfillcontrolSPR(WebControl ctrl, decimal query)
        {
            dsr.DfillcontrolSPR(ctrl, query);
        }

        public void BSSLCHK()
        {
            dsr.DSSLCHK();
        }
        public void BfillcontrolEQ(WebControl ctrl, string query)
        {
            dsr.DfillcontrolEQ(ctrl,query);
        }
        public void BfillcontrolFDTLS(WebControl ctrl)
        {
            dsr.DfillcontrolFDTLS(ctrl);
        }
        public void BfillcontrolRP(WebControl ctrl)
        {
            dsr.DfillcontrolRP(ctrl);
        }
    }
}