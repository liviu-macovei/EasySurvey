using System;
using EasySurvey.Common.Models;

namespace EasySurvey.Services
{
    public interface ISurveyTemplateService
    {
        SurveyTemplate GetById(Guid id);       
    }
}