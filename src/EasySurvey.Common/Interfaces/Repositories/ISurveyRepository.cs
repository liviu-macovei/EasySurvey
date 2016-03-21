using System;

namespace EasySurvey.Common.Interfaces.Repositories
{
    public interface ISurveyRepository
    {
        bool Save(Common.Models.Survey survey);
        bool Delete(Common.Models.Survey survey);
        bool DeleteById(Guid surveyId);
    }
}
