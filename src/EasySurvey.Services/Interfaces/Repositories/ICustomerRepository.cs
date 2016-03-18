using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EasySurvey.Services.Models;

namespace EasySurvey.Services.Interfaces.Repositories
{
    public interface ICustomerRepository
    {
        IEnumerable<Customer> GetAll();
        Customer Find(string key);
        void Add(Customer customer);
        void Delete(string Id);
        void Update(Customer item);
    }
}
