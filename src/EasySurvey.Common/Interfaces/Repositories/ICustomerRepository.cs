using System.Collections.Generic;
using EasySurvey.Common.Models;

namespace EasySurvey.Common.Interfaces.Repositories
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
