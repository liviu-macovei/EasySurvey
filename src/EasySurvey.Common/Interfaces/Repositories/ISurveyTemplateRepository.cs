using System.Collections.Generic;
namespace EasySurvey.Common.Interfaces.Repositories
{
    public interface ISurveyTemplateRepository
    {
        ICollection<Models.SurveyTemplate> GetAll();
        Models.SurveyTemplate GetById(int surveyTemplateId);
    }
}
