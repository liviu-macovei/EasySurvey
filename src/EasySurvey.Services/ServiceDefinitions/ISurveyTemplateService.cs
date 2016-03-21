using System;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface ISurveyTemplateService:IProcessOperations<SurveyTemplate>
    {
        SurveyTemplate GetById(Guid id);
        bool Exists(Guid id);
    }
}