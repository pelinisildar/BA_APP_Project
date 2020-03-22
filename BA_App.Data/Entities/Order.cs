using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace BA_App.Data.Entities
{
    public class Order
    {
        public int ID { get; set; }
        public int Count { get; set; }
        public double Discount { get; set; }
        public decimal TotalPrice { get; set; }

        public int CustomerID { get; set; }

        
        public Customer Customer { get; set; }
        public int ProductID { get; set; }

       
        public Product Product { get; set; }
        public int StoreID { get; set; }

       
        public Store Store { get; set; }

    }
}
