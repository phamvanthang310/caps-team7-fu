using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;

namespace SBPC_System.Models
{
    public class AccountType
    {
        [Key]
        public string Name { get; set; }
        public float Price { get; set; }
        public int ProductLimit { get; set; }
        public int SiteLimit { get; set; }
        public string Function { get; set; }
        public IList<User> Users { get; set; }
    }
}
