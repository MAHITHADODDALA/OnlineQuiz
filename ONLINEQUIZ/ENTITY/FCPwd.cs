using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ONLINEQUIZ.ENTITY
{
    public class FCPwd
    {
        private string _fname;
        private string _fpwd;
        

        

        public string Fpwd
        {
            get { return _fpwd; }
            set { _fpwd = value; }
        }

        public string Fname
        {
            get { return _fname; }
            set { _fname = value; }
        }
    }
}