using System;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.Mock
{
    public class SurveyTemplateServiceMock : ISurveyTemplateService
    {
        public SurveyTemplate GetById(Guid id)
        {
            return new SurveyTemplate
            {
                CreatedBy = "Mock",
                TaskDetails = "Some kind of description",
                Title = "Base Survey Template",
                Id = id,
                Description = "Another kind of description",
                OwnerId = new OwnerServiceMock().GetById(new Guid()).Id,
                SurveyTypeId = new SurveyTypeServiceMock().GetById(1).Id
            };
        }
    }
}