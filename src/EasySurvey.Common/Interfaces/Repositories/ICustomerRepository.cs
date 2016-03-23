using System.Collections.Generic;
using EasySurvey.Common.Models;

namespace EasySurvey.Common.Interfaces.Repositories
{
    public interface ICustomerRepository
    {
        ICollection<Customer> GetAll();
        Customer Find(int id);
        Customer Add(Customer customer);
        Customer Update(Customer customer);
        bool Delete(Customer customer);
        bool DeleteById(int id);
    }
}
