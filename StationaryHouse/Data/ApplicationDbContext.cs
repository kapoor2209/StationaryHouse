using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using StationaryHouse.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace StationaryHouse.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<Category> Categories { get; set; }
        public DbSet<SubCategory> SubCategories { get; set; }
        public DbSet<Stationery> Stationeries { get; set; }
        public DbSet<Order> Orders { get; set; }
    }
}
