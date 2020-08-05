using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplicationExample
{
    internal class City
    {
        int id;
        string name;
        public City(int _id, string _name)
        {
            id = _id;
            name = _name;

        }

        public int Id { get { return id; } }
        public string Name { get { return name; } }
    }
}