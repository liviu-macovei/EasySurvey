using System;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.Mock
{
    public class OwnerServiceMock : IOwnerService
    {
        public Owner GetById(Guid guid)
        {
            return new Owner
            {
                Id = guid,
                AddressLine1 = "Somewhere over the rainbow",
                City = "CPH",
                Country = "DK",
                Name = "Owner Mock Name",
                PostalCode = "2200NV",
                TemplateLimit = 1
            };
        }

        public Owner GetOwnerForSurveyId(Guid id)
        {
            return GetById(new Guid());
        }
    }
}