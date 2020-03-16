using System;
using Car.Classes;
using RentalCar.DataModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RentalCar.DataModel
{
    public class RentalCarRepository
    {
        public List<RenCar> GetAllRentalCars()
        {
            using (var context = new RentalCarDb())
            {
                return (from e in context.Cars
                        select e).ToList();
            }
            
        }
        public void InsertUser(User user)
        {
            using (var context = new RentalCarDb())
            {
                context.Database.Log = Console.WriteLine;
                context.Users.Add(user);
                context.SaveChanges();
            }
        }
        public void InsertMultipleUser()
        {
            var user_1 = new User
            {
                Account = "test_1@idealConcept.com",
                Password = "test_1",
                Type = UserType.admin
            };
            var user_2 = new User
            {
                Account = "test_1@idealConcept.com",
                Password = "test_2",
                Type = UserType.user
            };
            var user_3 = new User
            {
                Account = "Test_3@idealConcept.com",
                Password = "test_3",
                Type = UserType.user
            };
            using (var context = new RentalCarDb())
            {
                context.Database.Log = Console.WriteLine;
                context.Users.AddRange(new List<User> { user_1, user_2, user_3});
                context.SaveChanges();
            }
        }


    }
}
