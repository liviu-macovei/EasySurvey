using System.Collections.Generic;
using System.Data.Common;
using EasySurvey.Common.Models;

namespace EasySurvey.Common.Interfaces.Repositories
{
    public interface IAnswerGroupRepository
    { 
        ICollection<AnswerGroup> GetAll();
        ICollection<AnswerGroup> GetBySectionGroupId(int sectionGroupId);
        AnswerGroup Find(int id);
        AnswerGroup Add(AnswerGroup answerGroup);
        AnswerGroup AddFromSurvey(AnswerGroup answerGroup);
        AnswerGroup Update(AnswerGroup answerGroup);
        AnswerGroup Use(AnswerGroup answerGroup);
        bool Delete(AnswerGroup answerGroup);
        bool DeleteById(int id);
        ICollection<AnswerGroup> FindAllBySurveyId(int surveyId);
        AnswerGroup FindBySectionGroupId(int sectionGroupId);
    }
}