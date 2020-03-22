using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BA_App.Models
{
    public class OrderVM
    {
        public int Count { get; set; }
        public double Discount { get; set; }
        public decimal TotalPrice { get; set; }
        public int CustomerID { get; set; }
        public int ProductID { get; set; }
        public int StoreID { get; set; }
    }
}
