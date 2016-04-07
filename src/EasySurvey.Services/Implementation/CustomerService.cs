using System.Collections.Generic;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.Implementation
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
            if(element.Id == 0)
                element = _customerRepo.Add(element);
            else
                element = _customerRepo.Update(element);

            return true;
        }

        public bool Delete(Customer element)
        {
            return _customerRepo.Delete(element);
        }

        public bool DeleteById(int value)
        {
            return _customerRepo.DeleteById(value);
        }

        public Customer GetById(int id)
        {
            return _customerRepo.Find(id);
        }
    }
}
