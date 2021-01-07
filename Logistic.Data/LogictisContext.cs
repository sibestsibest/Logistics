using Logistic.Data.Model;
using Microsoft.EntityFrameworkCore;
using System;

namespace Logistic.Data
{
    public class LogictisContext : DbContext
    {
        public DbSet<DeliveryPlace> DeliveryPlace { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(
                @"Server=.\SQLEXPRESS;Database=Logictics;Integrated Security=True");
        }
    }
}
