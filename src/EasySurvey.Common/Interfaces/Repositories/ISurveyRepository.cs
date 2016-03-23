using System;
using System.Collections.Generic;

namespace EasySurvey.Common.Interfaces.Repositories
{
    public interface ISurveyRepository
    {
        ICollection<Models.Survey> GetAll();
        Models.Survey Find(int surveyId);
        Common.Models.Survey Add(Common.Models.Survey survey);
        Common.Models.Survey Update(Common.Models.Survey survey);
        bool Delete(Common.Models.Survey survey);
        bool DeleteById(int surveyId);
    }
}
