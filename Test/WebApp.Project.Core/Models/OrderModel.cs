﻿using System;
namespace WebApp.Project.Core.Models
{
    public class OrderModel
    {
        public int Id { get; set; }

        public string Email { get; set; }

        public string Address { get; set; }

        public string City { get; set; }

        public int CreditCard { get; set; }

        public int Cvc2 { get; set; }

        
    }
}
