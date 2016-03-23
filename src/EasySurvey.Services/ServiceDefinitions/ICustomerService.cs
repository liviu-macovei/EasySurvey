using System;
using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface ICustomerService:IProcessOperations<Customer>
    {
        Customer GetById(Guid id);
        ICollection<Customer> GetAll();
    }
}