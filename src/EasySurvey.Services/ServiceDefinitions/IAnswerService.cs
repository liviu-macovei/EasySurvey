using System;
using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;


namespace EasySurvey.Services.ServiceDefinitions
{
    public interface IAnswerService:IProcessOperations<Answer>
    {
        Answer GetById(Guid id);
        List<Answer> GetByAnswerGroupId(Guid id);
        List<Answer> GetBySurveyId(Guid id);
        Answer GetByQuestionId(int id);
    }
}