using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShoppingCart
{
    public class Product
    {
        private int _id = 0;
        private string _name = String.Empty;
        private string _description = String.Empty;
        private decimal _price = 0;
        private string _pricePer = String.Empty;
        private string _picLocLg = String.Empty;
        private string _picLocSm = String.Empty;
        private bool _available = false;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }

        public string Description
        {
            get { return _description; }
            set { _description = value; }
        }

        public decimal Price
        {
            get { return _price; }
            set { _price = value; }
        }

        public string PricePer
        {
            get { return _pricePer; }
            set { _pricePer = value; }
        }

        public string PicLocLg
        {
            get { return _picLocLg; }
            set { _picLocLg = value; }
        }

        public string PicLocSm
        {
            get { return _picLocSm; }
            set { _picLocSm = value; }
        }

        public bool Available
        {
            get { return _available; }
            set { _available = value; }
        }

        public Product(string name, string description, decimal price, string pricePer, string picLocLg, string picLocSm, bool available)
            : this(0, name, description, price, pricePer, picLocLg, picLocSm, available) { }


        public Product(int id, string name, string description, decimal price, string pricePer, string picLocLg, string picLocSm, bool available)
        {
            _id = id;
            _name = name;
            _description = description;
            _price = price;
            _pricePer = pricePer;
            _picLocLg = picLocLg;
            _picLocSm = picLocSm;
            _available = available;

        }

        public Product() { }

    }
}