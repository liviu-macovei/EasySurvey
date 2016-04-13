using EasySurvey.Services.ServiceDefinitions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EasySurvey.Common.Interfaces.Repositories;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.Implementation
{
    public class AnswerService : IAnswerService
    {

        private IAnswerRepository _answerRepo;

        public AnswerService(IAnswerRepository answerGroupRepo)
        {
            _answerRepo = answerGroupRepo;
        }

        public bool Delete(Answer element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(int value)
        {
            throw new NotImplementedException();
        }

        public List<Answer> GetByAnswerGroupId(int id)
        {
            throw new NotImplementedException();
        }

        public Answer GetById(int id)
        {
            throw new NotImplementedException();
        }

        public Answer GetByQuestionId(int id)
        {
            throw new NotImplementedException();
        }

        public List<Answer> GetBySurveyId(int id)
        {
            throw new NotImplementedException();
        }

        public bool Save(Answer element)
        {
            throw new NotImplementedException();
        }
    }
}
