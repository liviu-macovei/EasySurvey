using System;
using System.Collections.Generic;

namespace EasySurvey.Common.Interfaces.Repositories
{
    public interface ISurveyRepository
    {
        ICollection<Models.Survey> GetAll();
        ICollection<Models.Survey> GetAllByUserId(string userId);
        Models.Survey Find(int surveyId);
        Models.Survey Add(Models.Survey survey);
        Common.Models.Survey Update(Common.Models.Survey survey);
        bool Delete(Common.Models.Survey survey);
        bool DeleteById(int surveyId);
    }
}
