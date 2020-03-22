using BA_App.Data.Entities;
using BA_App.Repo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BA_App.Services
{
    public class CustomerService : EFRepository<Customer>, ICustomerRepository
    {
        public CustomerService(ApplicationDbContext dbContext) : base(dbContext)
        {
        }
    }
}
