using System;
using System;
using System.Collections.Generic;
using WebApp.Project.Core.Repositories.Implementations;
using WebApp.Project.Core.Models;
using Test.Project.Core.Models;

namespace WebApp.Project.Core.Services.Implementations
{
    public class OrderService
    {

        private readonly OrderRepository orderRepository;

        public OrderService(OrderRepository orderRepository)
        {
            this.orderRepository = orderRepository;
        }

        public List<OrderModel> GetAll()
        {
            return this.orderRepository.GetAll();
        }


        public bool AddToOrder(OrderModel orders)
        {
            //if (int.Equals(orders.c) || int.IsNullOrEmpty(orders.CartId))
            //{
            //    return false;
            //}
            return this.orderRepository.AddToOrder(orders);
        }
        
    }
}
