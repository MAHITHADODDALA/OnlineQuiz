using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ONLINEQUIZ.ENTITY;

namespace ONLINEQUIZ.QL
{
    public class Queries
    {
        FLogin fl = new FLogin();
        string query = string.Empty;
        string fname, fpwd, fsubcode;
        public void QFLValues(FLogin fl)
        {
            fname = fl.Fname;
            fpwd = fl.Fpwd;
            fsubcode = fl.Fsubcode;
        }

        public string getquery(string q)
        {
            if (q == "Fauthentication")
            {
                query = "select * from tblflogin where fname='" + fname + "' and fpwd='" + fpwd + "' and fsubcode='" + fsubcode + "'";
            }


            return query;
        }

    }
}