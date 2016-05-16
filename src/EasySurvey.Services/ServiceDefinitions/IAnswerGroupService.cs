using System;
using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface IAnswerGroupService:IProcessOperations<AnswerGroup>
    {
        ICollection<AnswerGroup> GetBySurveyId(int id);
        AnswerGroup GetBySectionGroupId(int id);
        bool Extend(AnswerGroup element);
    }
}