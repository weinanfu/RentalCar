using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Car.Classes;
using RentalCar.DataModel;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Principal;
using System.Data.Entity;

namespace CarRentalTest
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserName.Focus();
            Database.SetInitializer(new NullDatabaseInitializer<RentalCarDb>());
            string uName = String.Empty;
            string pWord = String.Empty;
            uName = Request.QueryString["uName"];
            pWord = Request.QueryString["pWord"];
            UserName.Text = uName;
            Password.Text = pWord;
        }
        protected void LogInSubmit(object sender, EventArgs e)
        {
            Page.Validate();
            if(Page.IsValid)
            {
                if(SimpleQueryMatch(UserName.Text, Password.Text, UserType.user))
                {
                  
                    HttpContext.Current.Response.Redirect("Default.aspx");
                }else
                {
                    OutputLabel.Text = "Please input correct username and password.";
                }
                
            }
            
        }

        private bool SimpleQueryMatch(string account, string password, UserType type)
        {
            using (var context = new RentalCarDb())
            {
                context.Database.Log = Console.WriteLine;
                var users = context.Users.ToList();
                foreach (var n in users)
                {
                    if (n.Account.Equals(account) && n.Password.Equals(password) && n.Type == type)
                    {
                        return true;
                    }
                }
                return false;
            }
        }
        private void InsertUser(IPrincipal user, User user_1)
        {
            throw new NotImplementedException();
        }
    }
}