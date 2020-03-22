using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BA_App.Models
{
    public class CustomerVM
    {
        public int CustomerNumber { get; set; }
        public string CustomerName { get; set; }
        public string CustomerSurname { get; set; }
        public int? OrderNumber { get; set; }
        public string OrderDate { get; set; }
    }
}
