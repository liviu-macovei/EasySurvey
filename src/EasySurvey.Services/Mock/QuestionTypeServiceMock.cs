using EasySurvey.Common.Models;

namespace EasySurvey.Services.Mock
{
    public class QuestionTypeServiceMock:IQuestionTypeService
    {
        public QuestionType GetById(int id)
        {
            return new QuestionType()
            {
                Id = id,
                Name = "Mock Question Type"+id
            };
        }
    }
}