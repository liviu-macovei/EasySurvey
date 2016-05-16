using System.Collections.Generic;
using System.Data.Common;
using EasySurvey.Common.Models;

namespace EasySurvey.Common.Interfaces.Repositories
{
    public interface IAnswerSectionRepository
    { 
        ICollection<AnswerSection> GetAll();
        AnswerSection Find(int id);
        AnswerSection Add(AnswerSection answerSection);
        AnswerSection Update(AnswerSection answerSection);
        bool Delete(AnswerSection answerSection);
        bool DeleteById(int id);
        bool DeleteByAnswerGroupId(int answerGroupid);
        ICollection<AnswerSection> FindAllByAnswerGroupId(int answerGroupId);
    }
}