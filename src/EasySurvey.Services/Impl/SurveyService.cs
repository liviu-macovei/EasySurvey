using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EasySurvey.Common.Models;
using EasySurvey.Common.Interfaces.Repositories;

namespace EasySurvey.Services.Impl
{
    public class SurveyService : ServiceDefinitions.ISurveyService
    {
        ICustomerRepository _customerRepo;
        ISurveyRepository _surveyRepo;
        ISurveyTemplateRepository _surveyTemplateRepo;
        public SurveyService(ICustomerRepository customerRepo, ISurveyRepository surveyRepo, ISurveyTemplateRepository surveyTemplateRepo)
        {
            _customerRepo = customerRepo;
            _surveyRepo = surveyRepo;
            _surveyTemplateRepo = surveyTemplateRepo;
        }

        public bool Delete(Survey element)
        {
            return _surveyRepo.Delete(element);
        }

        public bool DeleteById(int value)
        {
            return _surveyRepo.DeleteById(value);
        }

        public Survey GetById(int id)
        {
            return _surveyRepo.Find(id);
        }

        public List<Survey> GetByUserId(string userId)
        {
            return _surveyRepo.GetAll().ToList();
        }

        public bool Save(Survey element)
        {
            if (element.Id == 0)
                element = _surveyRepo.Add(element);
            else
                element = _surveyRepo.Update(element);

            return true;
        }
    }
}
