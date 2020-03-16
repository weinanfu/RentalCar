
using Car.Classes;
using RentalCar.DataModel;
using System;
using System.Data.Entity;
using System.Collections.Generic;
using System.Linq;

namespace ConTest
{
    class Program
    {
        static void Main(string[] args)
        {
            Database.SetInitializer(new NullDatabaseInitializer<RentalCarDb>());
            var user_1 = new User
            {
                Account = "WFU@idealConcept.com",
                Password = "IDC2",
                Type = UserType.admin
            };
            RentalCarRepository _repository = new RentalCarRepository();
            _repository.InsertUser(user_1);
            //InsertCar();
            //InsertMulCars();
            //InsertMulUsers();
            Console.ReadKey();
        }
        private static void InsertCar()
        {
            var car_1 = new RenCar
            {
                Id = 1,
                Type = "BMW 3 Series or similar",
                VehicleClass = VehicleClassType.Cars,
                PricePerDay = 30
            };
            using (var context = new RentalCarDb())
            {
                context.Database.Log = Console.WriteLine;
                context.Cars.Add(car_1);
                context.SaveChanges();
            }
        }
        

        private static void InsertMulCars()
        {
            var car_2 = new RenCar
            {
                Id = 2,
                Type = "Mercedes Benz CLA",
                VehicleClass = VehicleClassType.Cars,
                PricePerDay = 30
            };
            var car_3 = new RenCar
            {
                Id = 3,
                Type = "Tesla Model S",
                VehicleClass = VehicleClassType.Cars,
                PricePerDay = 30
            };
            var car_4 = new RenCar
            {
                Id = 4,
                Type = "Chevy Suburban",
                VehicleClass = VehicleClassType.Cars,
                PricePerDay = 30
            };
            var car_5 = new RenCar
            {
                Id = 5,
                Type = "Land Rover Discovery",
                VehicleClass = VehicleClassType.Suvs,
                PricePerDay = 30
            };
            using (var context = new RentalCarDb())
            {
                context.Database.Log = Console.WriteLine;
                context.Cars.AddRange(new List<RenCar> { car_2, car_3, car_4, car_5 });
                context.SaveChanges();
            }
        }

        private static void InsertMulUsers()
        {
            var user_1 = new User
            {
                Account = "WFU@idealConcept.com",
                Password = "IDC3",
                Type = UserType.admin
            };
            var user_2 = new User
            {
                Account = "Varun@idealConcept.com",
                Password = "IDC2",
                Type = UserType.user
            };
            var user_3 = new User
            {
                Account = "Abcd@idealConcept.com",
                Password = "IDC2",
                Type = UserType.user
            };
            var user_4 = new User
            {
                Account = "Abcd@idealConcept.com",
                Password = "IDC2",
                Type = UserType.user
            };
            using (var context = new RentalCarDb())
            {
                context.Database.Log = Console.WriteLine;
                context.Users.AddRange(new List<User> { user_1, user_2, user_3, user_4 });
                context.SaveChanges();
            }
        }
        private static void CreateOrder()
        {

        }

        private bool SimpleQueryMatch(string account, string password, UserType type)
        {
            using (var context = new RentalCarDb())
            {
                context.Database.Log = Console.WriteLine;
                var users = context.Users.ToList();
                foreach (var n in users)
                {
                    if(n.Account.Equals(account) && n.Password.Equals(password) && n.Type == type)
                    {
                        return true;
                    }
                }
                return false;
            }
        }
    }
}
