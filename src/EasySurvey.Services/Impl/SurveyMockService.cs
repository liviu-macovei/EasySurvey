using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EasySurvey.Services.Models;

namespace EasySurvey.Services.Impl
{
    public class SurveyMockService : ISurveyService
    {
        public List<Survey> GetByUserId(string userId)
        {
            var result = new List<Survey>();
            SurveyState currentState = new SurveyState() { Id = 1, Name = "Created" };
            Customer currentCustomer = new Customer() { Id = Guid.NewGuid(), Name = "Customer 1" };
            result.Add(new Survey() { Id = Guid.NewGuid(), SurveyTemplateId  = Guid.NewGuid(), SurveyState =  currentState, Customer = currentCustomer, UserId = userId });
            result.Add(new Survey() { Id = Guid.NewGuid(), SurveyTemplateId = Guid.NewGuid(), SurveyState = currentState, Customer = currentCustomer, UserId = userId });
            result.Add(new Survey() { Id = Guid.NewGuid(), SurveyTemplateId = Guid.NewGuid(), SurveyState = currentState, Customer = currentCustomer, UserId = userId });
            result.Add(new Survey() { Id = Guid.NewGuid(), SurveyTemplateId = Guid.NewGuid(), SurveyState = currentState, Customer = currentCustomer, UserId = userId });
            result.Add(new Survey() { Id = Guid.NewGuid(), SurveyTemplateId = Guid.NewGuid(), SurveyState = currentState, Customer = currentCustomer, UserId = userId });
            result.Add(new Survey() { Id = Guid.NewGuid(), SurveyTemplateId = Guid.NewGuid(), SurveyState = currentState, Customer = currentCustomer, UserId = userId });
            return result;
        }
    }
}
