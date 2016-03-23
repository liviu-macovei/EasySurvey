using System;
using System.Collections.Generic;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class CustomerServiceMock : ICustomerService
    {
        public Customer GetById(Guid id)
        {
            return new Customer {Id = id, Name = "CustomerName" + id, Telephone = "91 91 91 91"};
        }

        public ICollection<Customer> GetAll()
        {
            return new List<Customer>
            {
                GetById(Guid.NewGuid()),
                GetById(Guid.NewGuid()),
                GetById(Guid.NewGuid()),
                GetById(Guid.NewGuid())
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

        public bool DeleteById(Guid value)
        {
            return true;
        }

        public Customer GetById(int id)
        {
            return new Customer {Id = Guid.NewGuid(), Name = "CustomerName" + id};
        }
    }
}