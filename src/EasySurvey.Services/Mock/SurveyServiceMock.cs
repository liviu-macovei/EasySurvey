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
            var currentCustomer = new Customer {Id = MockRandom.Random().Next(100), Name = "Customer 1"};
            result.Add(new Survey
            {
                Id = MockRandom.Random().Next(100),
                SurveyTemplateId = MockRandom.Random().Next(100),
                SurveyState = currentState,
                Customer = currentCustomer,
                UserId = userId
            });
            result.Add(new Survey
            {
                Id = MockRandom.Random().Next(100),
                SurveyTemplateId = MockRandom.Random().Next(100),
                SurveyState = currentState,
                Customer = currentCustomer,
                UserId = userId
            });
            result.Add(new Survey
            {
                Id = MockRandom.Random().Next(100),
                SurveyTemplateId = MockRandom.Random().Next(100),
                SurveyState = currentState,
                Customer = currentCustomer,
                UserId = userId
            });
            return result;
        }

        public Survey GetById(int id)
        {
            var currentState = new SurveyState {Id = 1, Name = "Created"};
            var currentCustomer = new Customer {Id = MockRandom.Random().Next(100), Name = "Customer 1"};
            return new Survey
            {
                Id = id,
                SurveyTemplateId = MockRandom.Random().Next(100),
                SurveyState = currentState,
                Customer = currentCustomer,
                UserId =MockRandom.Random().Next(100).ToString()
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

        public bool DeleteById(int value)
        {
            throw new NotImplementedException();
        }
       
    }
}