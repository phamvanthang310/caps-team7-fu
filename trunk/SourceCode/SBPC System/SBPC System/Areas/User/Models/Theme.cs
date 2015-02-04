using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;

namespace SBPC_System.Models
{
    public class Theme
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Style { get; set; }
        public string Color { get; set; }
        public string CssFile { get; set; }
        public IList<Website> Websites { get; set; }
        [ForeignKey("User")]
        [Display(Name="User Email")]
        public string Email { get; set; }
        public Account User { get; set; }
    }
}
