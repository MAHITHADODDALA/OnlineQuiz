using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ONLINEQUIZ.ENTITY
{
    public class FLogin
    {
        private string _fname;
        private string _fpwd;

        public string Fpwd
        {
            get { return _fpwd; }
            set { _fpwd = value; }
        }
        private string _fsubcode;

        public string Fsubcode
        {
            get { return _fsubcode; }
            set { _fsubcode = value; }
        }       

        public string Fname
        {
            get { return _fname; }
            set { _fname = value; }
        }
    }
}