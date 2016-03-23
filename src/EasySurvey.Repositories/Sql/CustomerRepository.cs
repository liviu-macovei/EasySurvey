using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EasySurvey.Common.Models;

namespace EasySurvey.Repositories.Sql
{
    public class CustomerRepository : Common.Interfaces.Repositories.ICustomerRepository
    {
        private EasySurveyStore_DevContext _context;
        public CustomerRepository(EasySurveyStore_DevContext context)
        {
            _context = context;
        }

        public Customer Add(Customer customer)
        {
            _context.Customer.Add(customer);
            _context.SaveChanges();
            return customer;
        }

        public bool Delete(Customer customer)
        {
            _context.Customer.Remove(customer);
            _context.SaveChanges();
            return true;
        }

        public bool DeleteById(int customerId)
        {
            var query = from customer in _context.Customer
                        where customer.Id == customerId
                        select customer;

            if (query.FirstOrDefault() != null)
            {
                _context.Customer.Remove(query.First());
                _context.SaveChanges();
                return true;
            }
            return false;
        }

        public Customer Find(int customerId)
        {
            var query = from customer in _context.Customer
                        where customer.Id == customerId
                        select customer;
            return query.FirstOrDefault();
        }

        public ICollection<Customer> GetAll()
        {
            var query = from customer in _context.Customer
                        select customer;
            return query.ToList();
        }

        public Customer Update(Customer customer)
        {
            _context.Customer.Update(customer);
            _context.SaveChanges();
            return customer;
        }
    }
}
