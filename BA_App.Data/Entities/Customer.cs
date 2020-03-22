using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace BA_App.Data.Entities
{
    public class Customer
    {
        public int ID { get; set; }
        public int CustomerNumber { get; set; }
        [Required]
        public string CustomerName { get; set; }
        [Required]
        public string CustomerSurname { get; set; }
        public int? OrderNumber { get; set; }
        public string OrderDate { get; set; }

        
    }
}
