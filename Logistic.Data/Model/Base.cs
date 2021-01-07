using System;
using System.Collections.Generic;
using System.Text;

namespace Logistic.Data.Model
{
    public class Base
    {
        public int ID { get; set; }
        public string Code { get; set; }
        public bool IsDelete { get; set; }
        public DateTime CreateDate { get; set; }
        public int OrderBy { get; set; }

    }
}
