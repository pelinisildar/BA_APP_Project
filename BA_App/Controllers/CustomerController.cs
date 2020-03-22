using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BA_App.Data.Entities;
using BA_App.Models;
using BA_App.Repo;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BA_App.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomerController : ControllerBase
    {
        private readonly ApplicationDbContext _context;
        private readonly ICustomerRepository _customerrepo;

        public CustomerController(ApplicationDbContext context, ICustomerRepository customerrepo)
        {
            _context = context;
            _customerrepo = customerrepo;
        }

      
        // GET api/values/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Customer>> Customer([FromRoute] int id)
        {
            Customer customer = await _context.Customers.FirstOrDefaultAsync(q => q.CustomerNumber == id);

            if (customer != null)
            {
                CustomerVM model = new CustomerVM();
                model.CustomerName = customer.CustomerName;
                model.CustomerNumber = customer.CustomerNumber;
                model.CustomerSurname = customer.CustomerSurname;
                model.OrderDate = customer.OrderDate;
                model.OrderNumber = customer.OrderNumber;

                return Ok(model);
            }
            return NotFound();
        }

        // POST api/values
        [HttpPost]
        //[EnableCors]
        public async Task<ActionResult<Customer>> PostOrder([FromBody] CustomerVM model)
        {
            if (_context.Customers.FirstOrDefault(q => q.CustomerNumber == model.CustomerNumber) == null)
            {

                Customer customer = new Customer();

                customer.CustomerName = model.CustomerName;
                customer.CustomerNumber = model.CustomerNumber;
                customer.CustomerSurname = model.CustomerSurname;

                customer.OrderNumber = model.OrderNumber;

                if (model.OrderDate != "")
                    customer.OrderDate = model.OrderDate;
                else
                    customer.OrderDate = DateTime.Now.ToString();

                await _context.Customers.AddAsync(customer);
                await _context.SaveChangesAsync();

                return Ok(customer);
            }
            else
            {
                return NotFound();
            }

        }
    }
}