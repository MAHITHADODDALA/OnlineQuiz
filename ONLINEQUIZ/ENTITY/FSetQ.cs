using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ONLINEQUIZ.ENTITY
{
    public class FSetQ
    {
        private string _subject;
        private decimal _noq;

        public decimal Noq
        {
            get { return _noq; }
            set { _noq = value; }
        }

        public string Subject
        {
            get { return _subject; }
            set { _subject = value; }
        }
    }
}