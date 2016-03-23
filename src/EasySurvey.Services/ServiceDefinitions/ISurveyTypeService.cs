using System.Collections;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface ISurveyTypeService:IProcessOperations<SurveyType>
    {
        IEnumerable GetAll();
    }
}