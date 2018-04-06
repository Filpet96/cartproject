using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using WebApp.Project.Core.Models;
using WebApp.Project.Core.Repositories.Implementations;
using WebApp.Project.Core.Services.Implementations;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApp.Project.Api.Controllers
{
    [Route("api/[controller]")]
    public class OrderController : Controller
    {

        private readonly OrderService orderService;


        public OrderController(IConfiguration configuration)
        {
            var connectionString = configuration.GetConnectionString("ConnectionString");
            this.orderService = new OrderService(
                new OrderRepository(connectionString));
        }


        // GET: api/values
        [HttpGet]
        public List<OrderModel> Get()
        {
            return this.orderService.GetAll();
        }


        //// GET api/values/5
        //[HttpGet("{id}")]
        //public string Get(int id)
        //{
        //    return "value";
        //}

        // POST api/values
        [HttpPost]
        public bool Post([FromBody]OrderModel orders)
        {
            return this.orderService.AddToOrder(orders);

            //if (result)
            //{
            //    return this.StatusCode(201);
            //}
            //else
            //{
            //    return this.BadRequest();
            //}
        }

        //// PUT api/values/5
        //[HttpPut("{id}")]
        //public void Put(int id, [FromBody]string value)
        //{
        //}

        //// DELETE api/values/5
        //[HttpDelete("{id}")]
        //public void Delete(int id)
        //{
        //}
    }
}
