using System;
using System.Collections.Generic;
using System.Text;
using FakeItEasy;
using NUnit;
using NUnit.Framework;
using Test.Project.Core.Models;
using Test.Project.Core.Services.Implementations;
using WebApp.Project.Core.Repositories;
using WebApp.Project.Core.Services.Implementations;

namespace WebApp.Project.Core.UnitTests.Services
{
    public class ProductServiceTests
    {
        private ProductService productService;
        private IProductRepository productRepository;

        [SetUp]
        public void SetUp()
        {
            this.productRepository = A.Fake<IProductRepository>();
            this.productService = new ProductService(this.productRepository);
        }

        [Test]
        public void GetAll_ReturnExpectedProducts()
        {
            // Arrange
            var expectedProducts = new List<ProductModel>
            {
                new ProductModel { Id = 1}
            };
            A.CallTo(() => this.productRepository.GetAll()).Returns(expectedProducts);

            // Act
            var result = this.productService.GetAll();

            //Assert
            Assert.That(result, Is.EqualTo(expectedProducts));
        }
    }
}
