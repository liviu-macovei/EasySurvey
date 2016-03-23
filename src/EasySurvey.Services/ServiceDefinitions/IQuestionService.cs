using System;
using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface IQuestionService:IProcessOperations<Question>
    {
        Question GetNextQuestion(Question q);
        Question GetNextQuestion(int id);
        ICollection<Question> GetAll(int SectionId);
    }
}