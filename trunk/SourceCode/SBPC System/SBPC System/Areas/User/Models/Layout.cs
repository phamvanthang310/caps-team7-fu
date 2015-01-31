using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SBPC_System.Models
{
    public class Layout
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public float Header { get; set; }
        public float Footer { get; set; }
        public IList<Layout> Columns { get; set; }
        public IList<Page> Pages { get; set; }
    }
}
