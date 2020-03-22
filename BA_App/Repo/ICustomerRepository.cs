using BA_App.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BA_App.Repo
{
    public interface ICustomerRepository : IAsyncRepository<Customer>
    {
    }
}
