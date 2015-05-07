using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ONLINEQUIZ.ENTITY
{
    public class PaperResult
    {
        private int _id;
        private string _sname;
        private int _marks;

        public int Marks
        {
            get { return _marks; }
            set { _marks = value; }
        }

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }

        

        public string Sname
        {
            get { return _sname; }
            set { _sname = value; }
        }
    }
}