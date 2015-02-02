using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TemptProject.Models
{
    [Table("User")]
    public class User
    {
        [Required]
        [Key]
        public string Email { get; set; }
        [Required]
        public string Password { get; set; }
        [Required]
        public string FullName { get; set; }
        [Required]
        public string Role { get; set; }
    }

    public class Context : DbContext
    {
        public Context()
            : base("name=Context")
        {

        }
        public virtual DbSet<User> User { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {

        }

        public User CheckLogin(string email, string password){
            var u = this.User.Where(a => a.Email.Equals(email) && a.Password.Equals(password)).FirstOrDefault();
            return u;
        }
    }
}