using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ONLINEQUIZ.ENTITY
{
    public class SCPwd
    {
        private string _sname;
        private string _spwd;

        public string Spwd
        {
            get { return _spwd; }
            set { _spwd = value; }
        }

        public string Sname
        {
            get { return _sname; }
            set { _sname = value; }
        }
    }
}