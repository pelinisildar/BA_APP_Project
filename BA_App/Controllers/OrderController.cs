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
    public class OrderController : ControllerBase
    {

        private readonly ApplicationDbContext _context;

        public OrderController(ApplicationDbContext context)
        {
            _context = context;
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<Order>> Order([FromRoute] int id)
        {
            Order order = await _context.Orders.FirstOrDefaultAsync(q => q.ProductID == id);
            Product product = await _context.Products.FirstOrDefaultAsync(q => q.ID == id);
            OrderVM model = new OrderVM();

            model.TotalPrice = (product.Price - (product.Price * (Convert.ToDecimal(order.Discount) / 100)))*order.Count;

            return Ok(model);

        }

        // POST api/values
        [HttpPost]
        //[EnableCors]
        public async Task<IActionResult> Order([FromBody] OrderVM model)
        {
            Order order = new Order();

            order.ProductID = model.ProductID;
            order.StoreID = model.StoreID;
            order.Discount = model.Discount;
            order.TotalPrice = model.TotalPrice;
            order.CustomerID = model.CustomerID;
            order.Count = model.Count;


            //Table daki her bir row için olması gereken kod aşağıdadır. Fakat OrderVM yerine List<OrderVM> göndermemiz gerekiyor.

            //foreach (var item in model)
            //{
            //    order.CustomerID = item.CustomerID;
            //    order.ProductID = item.ProductID;
            //    order.StoreID = item.StoreID;
            //    order.Count = item.Count;
            //    order.Discount = item.Discount;
            //    order.TotalPrice = item.TotalPrice;
            //}



            _context.Orders.Add(order);
            await _context.SaveChangesAsync();

            return Ok(order);
        }


    }
}