using System;
using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface IAnswerGroupService:IProcessOperations<AnswerGroup>
    {
        AnswerGroup GetById(Guid id);
        ICollection<AnswerGroup> GetBySurveyId(Guid id);
        AnswerGroup GetBySectionGroupId(Guid id);
    }
}