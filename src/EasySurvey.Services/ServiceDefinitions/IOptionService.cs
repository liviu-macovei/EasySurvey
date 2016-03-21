using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface IOptionService:IProcessOperations<Option>
    {
        List<Option> GetOptionsByOptionGroupId(int id);
    }
}