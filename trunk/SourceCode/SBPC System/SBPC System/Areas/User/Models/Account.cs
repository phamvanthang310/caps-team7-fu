using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;

namespace SBPC_System.Models
{
    public class Account
    {
        [Key]
        [Required]
        public string Email { get; set; }
        [Required]
        public string FullName { get; set; }
        [Required]
        public string Password { get; set; }
        [Required]
        public string Role { get; set; }
        [ForeignKey("AccountType")]
        public string AccountTypeName { get; set; }
        public AccountType AccountType { get; set; }
        public IList<Website> Websites { get; set; }
    }
}
