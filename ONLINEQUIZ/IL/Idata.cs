using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Text;
using ONLINEQUIZ.ENTITY;
using System.Web.UI.WebControls;

namespace ONLINEQUIZ.IL
{

    
    interface Idata
    {
         void BSRDInsert(SRegister srg);
         void BFLValues(FLogin fl);
         void BFCPValues(FCPwd fcp);
         void BAQPaper(QuestionPaper qpr);
         void Bfillcontrol(WebControl ctrl, string query);
         void BfillcontrolRes(WebControl ctrl, string query);
         void BfillcontrolSPR(WebControl ctrl, decimal query);
         void BSLValues(SLogin sl);
         void BSCPValues(SCPwd scp);
         void BSTC();
         void BSRQ(int y);
         void BALValues(ALogin al);
         void BADST(ADST sd);
         void BDST(decimal s);
         void BAFADD(FLogin fl);
         void BADF(ADF df);
         void BSDD(SDDtbl sdt);
         void BFDSR(string id);
         void BFDASR(string sec );
         void BAESET(AExamSet ae);
         void BADESET();
         void BSESET();
         void BFSQ(FSetQ fsq);
         void BFDSETQ();
         void BFQSC();
         void BSGFSQ();
         void BSGFQSC();
         void BSR(string r);
         void BSRTOF();
         void BSSLCHK();
         void BfillcontrolEQ(WebControl ctrl, string query);
         void BfillcontrolFDTLS(WebControl ctrl);
         void BfillcontrolRP(WebControl ctrl);
    }
}
