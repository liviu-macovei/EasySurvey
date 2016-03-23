using System;
using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface ISurveyTemplateService:IProcessOperations<SurveyTemplate>
    {        
        bool Exists(int id);
        ICollection<SurveyTemplate> GetAll(int ownerId);
    }
}