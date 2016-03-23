using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface INextQuestionService:IProcessOperations<NextQuestion>
    {
        int GetIdOfNextQuestionAfterId(int id);

        NextQuestion GetNextQuestionAfterId(int id);
    }
}