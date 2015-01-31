using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;

namespace SBPC_System.Models
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public float Price { get; set; }
        public float SellingPrice { get; set; }
        public string Description { get; set; }
        public IList<Media> Medias { get; set; }
        [ForeignKey("Category")]
        [Display(Name="Category")]
        public int? CategoryId { get; set; }
        public Category Category { get; set; }
    }
}
