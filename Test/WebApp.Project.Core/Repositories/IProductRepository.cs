using System;
using System.Collections.Generic;
using Test.Project.Core.Models;

namespace WebApp.Project.Core.Repositories
{
    public interface IProductRepository
    {
        List<ProductModel> GetAll();

        ProductModel Get(int id);
    }
}
