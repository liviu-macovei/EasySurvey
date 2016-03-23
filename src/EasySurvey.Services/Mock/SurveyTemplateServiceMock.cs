using System;
using System.Collections.Generic;
using System.Linq;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class SurveyTemplateServiceMock : ISurveyTemplateService
    {
        public SurveyTemplate GetById(int id)
        {
            return new SurveyTemplate
            {
                CreatedBy = "Mock",
                TaskDetails = "Some kind of description",
                Title = "Base Survey Template",
                Id = id,
                Description = "Another kind of description",
                OwnerId = new OwnerServiceMock().GetById(MockRandom.Random().Next(100)).Id,
                SurveyTypeId = new SurveyTypeServiceMock().GetById(1).Id,
                SectionGroup = new List<SectionGroup>()
                {
                    new SectionGroupServiceMock().GetById(MockRandom.Random().Next(100)),
                    new SectionGroupServiceMock().GetById(MockRandom.Random().Next(100)),
                    new SectionGroupServiceMock().GetById(MockRandom.Random().Next(100))                    
                }.OrderBy(m=>m.SortOrder).ToList()                
            };
        }

        public bool Exists(int id)
        {
            return true;
        }

        public ICollection<SurveyTemplate> GetAll(int ownerId)
        {
            return new List<SurveyTemplate>()
            {
                GetById(MockRandom.Random().Next(199)),
                GetById(MockRandom.Random().Next(199)),
                GetById(MockRandom.Random().Next(199))
            };
        }

        public bool Save(SurveyTemplate element)
        {
            throw new NotImplementedException();
        }

        public bool Delete(SurveyTemplate element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(int value)
        {
            throw new NotImplementedException();
        }
       
    }
}