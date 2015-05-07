using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ONLINEQUIZ.ENTITY
{
    public class ALogin
    {
        private string _aname;
        private string _apwd;

        public string Apwd
        {
            get { return _apwd; }
            set { _apwd = value; }
        }

        public string Aname
        {
            get { return _aname; }
            set { _aname = value; }
        }
    }
}