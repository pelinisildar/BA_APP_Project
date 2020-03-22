using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BA_App.Data.Entities;
using BA_App.Models;
using BA_App.Repo;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BA_App.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    [ApiController]
    public class ValuesController : ControllerBase
    {
        private readonly ApplicationDbContext _context;
        private readonly ICustomerRepository _customerrepo;

        public ValuesController(ApplicationDbContext context, ICustomerRepository customerrepo)
        {
            _context = context;
            _customerrepo=customerrepo;
        }

        //GET api/values
       [HttpGet]
        public ActionResult<IEnumerable<string>> Get()
        {
            return new string[] { "value1", "value2" };
        }

       
        // POST api/values
        [HttpPost]        
        //[EnableCors]
        public void Post()
        {
            
        }

        // PUT api/values/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/values/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
