using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ONLINEQUIZ.ENTITY
{
    public class AExamSet
    {
        private string _subcode;
        private string _time;

        public string Time
        {
            get { return _time; }
            set { _time = value; }
        }

        public string Subcode
        {
            get { return _subcode; }
            set { _subcode = value; }
        }
    }
}