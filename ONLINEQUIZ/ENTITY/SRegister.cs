using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ONLINEQUIZ.ENTITY
{
    public class SRegister
    {
        private string _sname;
        private decimal _sid;
        private string _spwd;
        private string _semail;
        private decimal _sphone;
        private string _ssec;

        public string Ssec
        {
            get { return _ssec; }
            set { _ssec = value; }
        }

        public decimal Sphone
        {
            get { return _sphone; }
            set { _sphone = value; }
        }

        public string Semail
        {
            get { return _semail; }
            set { _semail = value; }
        }

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