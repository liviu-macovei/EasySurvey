using System;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class OwnerServiceMock : IOwnerService
    {
        public Owner GetById(int id)
        {
            return new Owner
            {
                Id = id,
                AddressLine1 = "Somewhere over the rainbow",
                City = "CPH",
                Country = "DK",
                Name = "Owner Mock Name",
                PostalCode = "2200NV",
                TemplateLimit = 1
            };
        }

        public Owner GetOwnerForSurveyId(int id)
        {
            return GetById(MockRandom.Random().Next(100));
        }

        public bool Save(Owner element)
        {
            throw new NotImplementedException();
        }

        public bool Delete(Owner element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(int value)
        {
            throw new NotImplementedException();
        }
      
    }
}