using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;

namespace SBPC_System.Models
{
    public class Page
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string TitleText { get; set; }
        public string HeaderText { get; set; }
        public string HtmlFile { get; set; }
        [ForeignKey("Layout")]
        [Display(Name="Layout")]
        public int LayouId { get; set; }
        [ForeignKey("Website")]
        [Display(Name="Website")]
        public int WebsiteId { get; set; }
        public Layout Layout { get; set; }
        public Website Website { get; set; }
    }
}
