using System;
using System.Collections.Generic;
using System.Linq;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

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
                OwnerId = new OwnerServiceMock().GetById(Guid.NewGuid()).Id,
                SurveyTypeId = new SurveyTypeServiceMock().GetById(1).Id,
                SectionGroup = new List<SectionGroup>()
                {
                    new SectionGroupServiceMock().GetById(Guid.NewGuid()),
                    new SectionGroupServiceMock().GetById(Guid.NewGuid()),
                    new SectionGroupServiceMock().GetById(Guid.NewGuid())                    
                }.OrderBy(m=>m.SortOrder).ToList()                
            };
        }

        public bool Exists(Guid id)
        {
            return true;
        }

        public bool Save(SurveyTemplate element)
        {
            throw new NotImplementedException();
        }

        public bool Delete(SurveyTemplate element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(Guid value)
        {
            throw new NotImplementedException();
        }

        public SurveyTemplate GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}