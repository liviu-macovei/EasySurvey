using System;
using System.Collections.Generic;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class SurveyServiceMock : ISurveyService
    {
        public List<Survey> GetByUserId(string userId)
        {
            var result = new List<Survey>();
            var currentState = new SurveyState {Id = 1, Name = "Created"};
            var currentCustomer = new Customer {Id = Guid.NewGuid(), Name = "Customer 1"};
            result.Add(new Survey
            {
                Id = Guid.NewGuid(),
                SurveyTemplateId = Guid.NewGuid(),
                SurveyState = currentState,
                Customer = currentCustomer,
                UserId = userId
            });
            result.Add(new Survey
            {
                Id = Guid.NewGuid(),
                SurveyTemplateId = Guid.NewGuid(),
                SurveyState = currentState,
                Customer = currentCustomer,
                UserId = userId
            });
            result.Add(new Survey
            {
                Id = Guid.NewGuid(),
                SurveyTemplateId = Guid.NewGuid(),
                SurveyState = currentState,
                Customer = currentCustomer,
                UserId = userId
            });
            return result;
        }

        public Survey GetById(Guid id)
        {
            var currentState = new SurveyState {Id = 1, Name = "Created"};
            var currentCustomer = new Customer {Id = Guid.NewGuid(), Name = "Customer 1"};
            return new Survey
            {
                Id = id,
                SurveyTemplateId = Guid.NewGuid(),
                SurveyState = currentState,
                Customer = currentCustomer,
                UserId =Guid.NewGuid().ToString()
            };
        }

        public bool Save(Survey element)
        {
            throw new NotImplementedException();
        }

        public bool Delete(Survey element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(Guid value)
        {
            throw new NotImplementedException();
        }

        public Survey GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}