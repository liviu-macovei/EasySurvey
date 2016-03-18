using System;
using System.Collections.Generic;
using EasySurvey.Common.Models;

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

        public Survey GetByUserIdAndId(string userId, Guid id)
        {
            var currentState = new SurveyState {Id = 1, Name = "Created"};
            var currentCustomer = new Customer {Id = Guid.NewGuid(), Name = "Customer 1"};
            return new Survey
            {
                Id = id,
                SurveyTemplateId = Guid.NewGuid(),
                SurveyState = currentState,
                Customer = currentCustomer,
                UserId = userId
            };
        }
    }
}