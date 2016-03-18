using EasySurvey.Common.Models;

namespace EasySurvey.Services
{
    public interface IQuestionService
    {
        Question GetById(int id);
        Question GetNextQuestion(Question q);
        Question GetNextQuestion(int id);
    }
}