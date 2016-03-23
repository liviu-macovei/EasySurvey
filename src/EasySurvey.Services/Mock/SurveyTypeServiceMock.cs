using System;
using System.Collections;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class SurveyTypeServiceMock : ISurveyTypeService
    {
        public SurveyType GetById(int id)
        {
            return new SurveyType
            {
                Id = id,
                Name = "Mock Survey Type"
            };
        }

        public IEnumerable GetAll()
        {
            throw new NotImplementedException();
        }

        public bool Save(SurveyType element)
        {
            throw new NotImplementedException();
        }

        public bool Delete(SurveyType element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(int value)
        {
            throw new NotImplementedException();
        }
    }
}