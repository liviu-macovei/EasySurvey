namespace EasySurvey.Common.Interfaces.Repositories
{
    interface ISurveyTemplateRepository
    {
        Models.SurveyTemplate Find(string key);
    }
}
