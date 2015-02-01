using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;

namespace SBPC_System.Models
{
    public class Media
    {
        public int Id { get; set; }
        public string Url { get; set; }
        public string Type { get; set; }
        [ForeignKey("Product")]
        [Display(Name="Product")]
        public int? ProductId { get; set; }
        public Product Product { get; set; }
        [ForeignKey("Category")]
        [Display(Name = "Category")]
        public int? CategoryId { get; set; }
        public Category Category{get;set;}
    }
}
