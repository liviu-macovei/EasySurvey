using EasySurvey.Common.Models;

namespace EasySurvey.Services.Mock
{
    public class SurveyTypeServiceMock : ISurveyTypeService
    {
        public SurveyType GetById(int id)
        {
            return new SurveyType
            {
                Id = id,
                Name = "Mock Survey Type"
            };
        }
    }
}