using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface IQuestionService:IProcessOperations<Question>
    {
        Question GetNextQuestion(Question q);
        Question GetNextQuestion(int id);
    }
}