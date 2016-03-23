using System;
using System.Collections.Generic;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class CustomerServiceMock : ICustomerService
    {
        public ICollection<Customer> GetAll()
        {
            return new List<Customer>
            {
                GetById(MockRandom.Random().Next(100)),
                GetById(MockRandom.Random().Next(100)),
                GetById(MockRandom.Random().Next(100)),
                GetById(MockRandom.Random().Next(100))
            };
        }

        public bool Save(Customer element)
        {
            return true;
        }

        public bool Delete(Customer element)
        {
            return true;
        }

        public bool DeleteById(int value)
        {
            return true;
        }

        public Customer GetById(int id)
        {
            return new Customer { Id = MockRandom.Random().Next(100), Name = "CustomerName" + id, Telephone = "91 91 91 91" };
        }
    }
}