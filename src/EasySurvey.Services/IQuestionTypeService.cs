using EasySurvey.Common.Models;

namespace EasySurvey.Services
{
    public interface IQuestionTypeService
    {
        QuestionType GetById(int id);
    }
}