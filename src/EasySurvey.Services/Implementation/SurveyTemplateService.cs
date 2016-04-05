using System;
using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Repositories;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Implementation
{
    public class SurveyTemplateService : ISurveyTemplateService
    {
        private readonly ISurveyTemplateRepository _surveyTemplateRepo;

        public SurveyTemplateService(ISurveyTemplateRepository surveyTemplateRepo)
        {
            _surveyTemplateRepo = surveyTemplateRepo;
        }

        public bool Delete(SurveyTemplate element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(int value)
        {
            throw new NotImplementedException();
        }

        public bool Exists(int id)
        {
            return _surveyTemplateRepo.GetById(id) != null ? true : false;
        }

        public ICollection<SurveyTemplate> GetAll(int ownerId)
        {
            return _surveyTemplateRepo.GetAll();
        }

        public SurveyTemplate GetById(int id)
        {
            return _surveyTemplateRepo.GetById(id);
        }

        public bool Save(SurveyTemplate element)
        {
            throw new NotImplementedException();
        }
    }
}