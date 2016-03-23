using EasySurvey.Common.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EasySurvey.Services.Impl
{
    public class CustomerService : ServiceDefinitions.ICustomerService 
    {
        EasySurvey.Common.Interfaces.Repositories.ICustomerRepository _customerRepo;
        public CustomerService(EasySurvey.Common.Interfaces.Repositories.ICustomerRepository customerRepo)
        {
            _customerRepo = customerRepo;
        }

        public ICollection<Customer> GetAll()
        {
            return _customerRepo.GetAll();
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
            return _customerRepo.Find(id);
        }
    }
}
