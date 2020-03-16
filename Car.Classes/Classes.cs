using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;


namespace Car.Classes
{
    public class RenCar
    {
        public int Id { get; set; }
        public string Type { get; set; }
        public VehicleClassType VehicleClass { get; set; }
        public float PricePerDay { get; set; }
        public List<Order> CarOrders { get; set; }

    }
    public class User
    {
        public int Id { get; set; }
        public string Account { get; set; }
        public string Password { get; set; }
        public UserType Type { get; set; }
        public List<Order> UserOrders { get; set; }
    }

    public class Order
    {
        public int Id { get; set; }
        [Required]
        public RenCar CarId { get; set; }
        [Required]
        public User UserId { get; set; }
        public System.DateTime PickUpDate { get; set; }     
        public System.DateTime ReturnDate { get; set; }
        
        public float Price { get; set; }
    }
}
