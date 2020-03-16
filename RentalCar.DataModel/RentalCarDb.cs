using System.Collections.Generic;
using Car.Classes;
using System.Data.Entity;

namespace RentalCar.DataModel
{
    public class RentalCarDb : DbContext
    {
        public DbSet<RenCar> Cars { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<Order> Orders { get; set; }
    }
}
