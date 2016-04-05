using System;
using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Repositories;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Implementation
{
    public class AnswerGroupService : IAnswerGroupService
    {
        private IAnswerGroupRepository _answerGroupRepo;

        public AnswerGroupService(IAnswerGroupRepository answerGroupRepo)
        {
            _answerGroupRepo = answerGroupRepo;
        }

        public ICollection<AnswerGroup> GetAll()
        {
            return _answerGroupRepo.GetAll();
        }

        public bool Save(AnswerGroup element)
        {
            if (element.Id == 0)
                element = _answerGroupRepo.Add(element);
            else
                element = _answerGroupRepo.Update(element);

            return true;
        }

        public bool Delete(AnswerGroup element)
        {
            return _answerGroupRepo.Delete(element);
        }

        public bool DeleteById(int value)
        {
            return _answerGroupRepo.DeleteById(value);
        }

        public AnswerGroup GetById(int id)
        {
            return _answerGroupRepo.Find(id);
        }

        public ICollection<AnswerGroup> GetBySurveyId(int id)
        {
            return _answerGroupRepo.FindAllBySurveyId(id);
        }

        public AnswerGroup GetBySectionGroupId(int id)
        {
            return _answerGroupRepo.FindBySectionGroupId(id);
        }
    }
}