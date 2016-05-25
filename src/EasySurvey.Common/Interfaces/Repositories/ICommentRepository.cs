using System.Collections.Generic;
using EasySurvey.Common.Models;

namespace EasySurvey.Common.Interfaces.Repositories
{
    public interface ICommentRepository
    {
        ICollection<Comment> GetAll();
        ICollection<Comment> GetBySurveyId(int surveyId);
        ICollection<Comment> GetByUserId(string userId);
        Comment Find(int id);
        Comment Add(Comment customer);
        Comment Update(Comment customer);
        bool Delete(Comment customer);
        bool DeleteById(int id);
    }
}
