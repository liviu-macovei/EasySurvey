using EasySurvey.Services.ServiceDefinitions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.Impl
{
    public class SurveyTemplateService : ISurveyTemplateService
    {
        EasySurvey.Common.Interfaces.Repositories.ISurveyTemplateRepository _surveyTemplateRepo;
        public SurveyTemplateService(EasySurvey.Common.Interfaces.Repositories.ISurveyTemplateRepository surveyTemplateRepo)
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
