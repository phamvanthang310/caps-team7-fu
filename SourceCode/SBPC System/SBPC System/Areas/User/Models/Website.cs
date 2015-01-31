using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;

namespace SBPC_System.Models
{
    public class Website
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Url { get; set; }
        public int TitleSize { get; set; }
        public string TitleColor { get; set; }
        public int HeaderSize { get; set; }
        public string HeaderColor { get; set; }
        public int NavMenuSize { get; set; }
        public string BackGroundImange { get; set; }
        public string FaviconImage { get; set; }
        public IList<Page> Pages { get; set; }
        [ForeignKey("User")]
        [Display(Name="User Email")]
        public string Email { get; set; }
        public User User { get; set; }
        [ForeignKey("Theme")]
        [Display(Name="Theme")]
        public int? ThemeId { get; set; }
        public Theme Theme { get; set; }
        public IList<Category> Categories { get; set; }

    }
}
