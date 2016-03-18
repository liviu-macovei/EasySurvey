using EasySurvey.Common.Models;

namespace EasySurvey.Services
{
    public interface ISurveyTypeService
    {
        SurveyType GetById(int id);
    }
}