using System;
using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface ISurveyService : IProcessOperations<Survey>
    {
        List<Survey> GetByUserId(string userId);
        Survey GetById(int id);
    }
}