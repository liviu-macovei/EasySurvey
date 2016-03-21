using System;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class QuestionTypeServiceMock : IQuestionTypeService
    {
        public QuestionType GetById(int id)
        {
            return new QuestionType
            {
                Id = id,
                Name = "Mock Question Type" + id
            };
        }

        public bool Save(QuestionType element)
        {
            throw new NotImplementedException();
        }

        public bool Delete(QuestionType element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(Guid value)
        {
            throw new NotImplementedException();
        }
    }
}