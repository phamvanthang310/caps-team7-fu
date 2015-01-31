using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;

namespace SBPC_System.Models
{
    public class Category
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public IList<Product> Products { get; set; }
        public IList<Media> Medias { get; set; }
        [ForeignKey("Website")]
        [Display(Name="Website")]
        public int? WebsiteId { get; set; }
        public Website Website { get; set; }
    }
}
