using EasySurvey.Common.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EasySurvey.Common.Interfaces.Repositories
{
    public interface IQuestionTypeRepository
    {
        ICollection<QuestionType> GetAll();
        QuestionType Find(int id);
        QuestionType Add(QuestionType questionType);
        QuestionType Update(QuestionType questionType);
        bool Delete(QuestionType questionType);
        bool DeleteById(int id);
    }
}
