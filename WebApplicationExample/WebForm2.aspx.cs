using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplicationExample
{
    public partial class WebForm2 : System.Web.UI.Page
    {   
        List<City> cities = new List<City>();

        protected void Page_Load(object sender, EventArgs e)
        {
            cities.Add(new City(1, "Gdańsk"));
            cities.Add(new City(2, "Kraków"));
            cities.Add(new City(3, "Warszawa"));
            cities.Add(new City(4, "Poznań"));



        }
    }
}