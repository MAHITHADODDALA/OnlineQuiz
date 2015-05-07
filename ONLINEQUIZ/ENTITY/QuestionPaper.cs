using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ONLINEQUIZ.ENTITY
{
    public class QuestionPaper
    {
        private int _qno;

        public int Qno
        {
            get { return _qno; }
            set { _qno = value; }
        }

        private string _question;

        public string Question
        {
            get { return _question; }
            set { _question = value; }
        }

        private string _option1;

        public string Option1
        {
            get { return _option1; }
            set { _option1 = value; }
        }

        private string _option2;

        public string Option2
        {
            get { return _option2; }
            set { _option2 = value; }
        }

        private string _option3;

        public string Option3
        {
            get { return _option3; }
            set { _option3 = value; }
        }

        private string _option4;

        public string Option4
        {
            get { return _option4; }
            set { _option4 = value; }
        }

        private int _answer;

        public int Answer
        {
            get { return _answer; }
            set { _answer = value; }
        }
    }
}