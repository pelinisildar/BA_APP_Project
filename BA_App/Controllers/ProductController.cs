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
    public class ProductController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public ProductController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Product
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Product>>> GetProduct()
        {
            List<ProductVM> model = await _context.Products.OrderBy(x => x.ID).Select(q => new ProductVM()
            {
                ID = q.ID,
                ProductName = q.ProductName

            }).ToListAsync();

            return Ok(model);
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Product>> Product([FromRoute] int id)
        {
            Product product = await _context.Products.FirstOrDefaultAsync(q => q.ID == id);

            ProductVM model = new ProductVM();

            model.Price = product.Price;

            return Ok(model);
        }

    }
}
