using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BA_App.Data.Entities;
using BA_App.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BA_App.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StoreController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public StoreController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Store
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Store>>> GetStore()
        {
            List<StoreVM> model = await _context.Stores.OrderBy(x => x.ID).Select(q => new StoreVM()
            {
                ID = q.ID,
                StoreName = q.StoreName

            }).ToListAsync();

            return Ok(model);
        }
    }
}