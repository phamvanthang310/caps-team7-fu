using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace SBPC_System.Models
{
    public class SBPCDbContext : DbContext
    {
        //Account
        public DbSet<AccountType> AccountTypes { get; set; }
        public DbSet<Account> Users { get; set; }
        //Template
        public DbSet<Column> Columns { get; set; }
        public DbSet<Layout> Layouts { get; set; }
        public DbSet<Page> Pages { get; set; }
        public DbSet<Theme> Themes { get; set; }
        public DbSet<Website> Websites { get; set; }
        //Product Catalogue
        public DbSet<Product> Products { get; set; }
        public DbSet<Media> Media { get; set; }
        public DbSet<Category> Categories { get; set; }
        

    }
}