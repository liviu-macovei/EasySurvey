using System.Collections;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface IQuestionTypeService:IProcessOperations<QuestionType>
    {
        IEnumerable GetAll();
    }
}