using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SBPC_System.Models
{
    public class Column
    {
        public int Id { get; set; }
        public string Position { get; set; }
        public string WidthPercent { get; set; }
        public IList<Layout> Layouts { get; set; }
    }
}