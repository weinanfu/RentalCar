using System;
using Car.Classes;
using RentalCar.DataModel;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarRentalTest
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserName.Focus();
            Database.SetInitializer(new NullDatabaseInitializer<RentalCarDb>());
        }

        public void RegisterSubmit(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {
                var uName = UserName.Text;
                var pWord = Password.Text;
                var user_1 = new User
                {
                    Account = uName,
                    Password = pWord,
                    Type = UserType.admin
                };
                OutputLabel.Text = uName + " " + pWord;
                RentalCarRepository _repository = new RentalCarRepository();
                _repository.InsertUser(user_1);
                Response.Redirect("LogIn.aspx?uName=" + uName);
                Response.Redirect("LogIn.aspx?uName=" +  pWord);
                HttpContext.Current.Response.Redirect("LogIn.aspx");
            }
        }
    }
}