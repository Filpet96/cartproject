using System;
using System.Collections.Generic;
using Test.Project.Core.Models;
using System.Linq;
using MySql.Data.MySqlClient;
using Dapper;
using WebApp.Project.Core.Models;

namespace WebApp.Project.Core.Repositories.Implementations
{
    public class OrderRepository
    {
        private readonly string connectionString;

        public OrderRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public List<OrderModel> GetAll()
        {
            using (var connection = new MySqlConnection(this.connectionString))
            {
                return connection.Query<OrderModel>("select * from orders").ToList();
            }
        }

        public bool AddToOrder(OrderModel orders)
        {
            using (var connection = new MySqlConnection(this.connectionString))
            {
                try
                {
                    connection.Execute(
                        "insert into orders (userid, firstname, lastname, email, address, city, creditcard, cvc) " +
                        "values(@userid, @firstname, @lastname, @email, @address, @city, @creditcard, @cvc)",
                        new 
                        {
                        userid = @orders.UserId,
                        firstname = @orders.FirstName, 
                        lastname = @orders.LastName, 
                        email = @orders.Email, 
                        address = @orders.Address, 
                        city = @orders.City, 
                        creditcard = @orders.CreditCard, 
                        cvc = @orders.Cvc 
                        });

                }
                catch (Exception)
                {
                    return false;
                }
            }

            return true;
        }

    }
}
