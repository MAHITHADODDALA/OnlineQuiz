using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ONLINEQUIZ.ENTITY
{
    public class SLogin
    {
        private string _sname;
        private decimal _sid;
        private string _spwd;

        public string Spwd
        {
            get { return _spwd; }
            set { _spwd = value; }
        }

        public decimal Sid
        {
            get { return _sid; }
            set { _sid = value; }
        }

        public string Sname
        {
            get { return _sname; }
            set { _sname = value; }
        }
    }
}