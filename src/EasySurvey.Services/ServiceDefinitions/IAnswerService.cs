using System;
using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;


namespace EasySurvey.Services.ServiceDefinitions
{
    public interface IAnswerService:IProcessOperations<Answer>
    {
        Answer GetById(int id);
        List<Answer> GetByAnswerGroupId(int id);
        List<Answer> GetBySurveyId(int id);
        Answer GetByQuestionId(int id);
    }
}