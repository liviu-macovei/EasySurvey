using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class AnswerServiceMock:IAnswerService
    {
        public Answer GetById(Guid id)
        {
            return new Answer() {Id = id,};
        }

        List<Answer> IAnswerService.GetByAnswerGroupId(Guid id)
        {
            throw new NotImplementedException();
        }

        List<Answer> IAnswerService.GetBySurveyId(Guid id)
        {
            throw new NotImplementedException();
        }

        public Answer GetByQuestionId(int id)
        {
            throw new NotImplementedException();
        }

        public bool Save(Answer element)
        {
            throw new NotImplementedException();
        }

        public bool Delete(Answer element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(Guid value)
        {
            throw new NotImplementedException();
        }

        public Answer GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}
