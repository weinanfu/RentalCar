<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="testtttt._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Rent-A-Car</h1>
        <p class="lead">
            Looking to rent a car for an upcoming vacation or business trip?
             At Enterprise Rent-A-Car we make renting a car seamless so you can get right on your way.
            Part of the world’s largest fleet with over 1.7 million vehicles,, and with 7,600 neighborhood and airport branches in over 85 countries, 
             you are sure to find the right vehicle no matter where your destination is located.
        </p>
        <p><a href="http://www.enterprise.com" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
        
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Rental Car Types</h2>
            <p>
                From compact cars to spacious SUVs and vans, we offer a large range of reliable vehicles to suit your needs.
            </p>
           
            <p>
                <a class="btn btn-default" href="http://www.enterprise.com"> VIEW ALL OUR RENTAL VEHICLES &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>US Rental Locations</h2>
            <p>
               Enterprise Rent-A-Car has thousands of airport and neighborhood locations throughout the US.
            </p>
            <p>
                <a class="btn btn-default" href="http://www.enterprise.com">SEE US CAR RENTAL LOCATIIONS &raquo;</a>
            </p>

        </div>
        <div class="col-md-4">
            <h2>Car Rental Deals</h2>
            <p>
                Find out about our latest offers to drive away with a great car rental deal from any of our global locations.
            </p>
            <p>
                <a class="btn btn-default" href="http://www.enterprise.com">BROWSE CAR RENTAL DEALS & PROMOTIONS &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
