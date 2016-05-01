using System;
using System.Collections.Generic;
using System.Linq;
using EasySurvey.Common.Interfaces.Repositories;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.Implementation
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
            try
            {
                return _surveyRepo.Delete(element);
            }
            catch (Exception ex)
            {
                //Maybe log
                return false;
            }
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
            {
                var surveyTemplate = _surveyTemplateRepo.GetById(element.SurveyTemplateId);
                foreach (var sectionGroup in surveyTemplate.SectionGroup)
                {
                    element.AnswerGroup.Add(new AnswerGroup
                    {
                        SectionGroupId = sectionGroup.Id,
                        SurveyId = element.Id,
                        IsUsed = false
                    });
                }

                element = _surveyRepo.Add(element);
            } 
            else
                element = _surveyRepo.Update(element);

            return true;
        }
    }
}
