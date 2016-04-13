using System.Collections.Generic;
using EasySurvey.Common.Models;

namespace EasySurvey.Common.Interfaces.Repositories
{
    public interface IAnswerRepository
    { 
        ICollection<Answer> GetAll();
        Answer Find(int id);
        Answer Add(Answer Answer);        
        Answer Update(Answer Answer);
        bool Delete(Answer Answer);
        bool DeleteById(int id);
        ICollection<Answer> FindAllBySurveyId(int surveyId);
        ICollection<Answer> FindAllByAnswerGroupId(int surveyId);
        ICollection<Answer> FindAllByQuestionId(int surveyId);
    }
}