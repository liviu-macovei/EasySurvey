using EasySurvey.Services.ServiceDefinitions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EasySurvey.Common.Models;
using System.Collections;
using EasySurvey.Common.Interfaces.Repositories;

namespace EasySurvey.Services.Implementation
{
    public class QuestionTypeService : IQuestionTypeService
    {
        private IQuestionTypeRepository _questionTypeRepo;

        public QuestionTypeService(IQuestionTypeRepository questionTypeRepo)
        {
            _questionTypeRepo = questionTypeRepo;
        }

        public bool Delete(QuestionType element)
        {
            return _questionTypeRepo.Delete(element);
        }

        public bool DeleteById(int value)
        {
            return _questionTypeRepo.DeleteById(value);
        }

        public IEnumerable GetAll()
        {
            return _questionTypeRepo.GetAll();
        }

        public QuestionType GetById(int id)
        {
            return _questionTypeRepo.Find(id);
        }

        public bool Save(QuestionType element)
        {
            if (element.Id == 0)
                element = _questionTypeRepo.Add(element);
            else
                element = _questionTypeRepo.Update(element);

            return true;
        }
    }
}
