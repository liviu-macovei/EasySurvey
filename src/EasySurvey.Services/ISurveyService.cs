using System;
using System.Collections.Generic;
using EasySurvey.Common.Models;

namespace EasySurvey.Services
{
    public interface ISurveyService
    {
        List<Survey> GetByUserId(string userId);
        Survey GetByUserIdAndId(string userId, Guid id);
    }
}
