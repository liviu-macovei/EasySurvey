using System;
using System.Collections.Generic;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class SectionServiceMock : ISectionService
    {
        public Section GetById(Guid id)
        {
            return new Section
            {
                Id = id,
                Title = "Mock Section" + id,
                Description = "Mock Description of section",
                SectionGroupId = new Guid(),
                SortOrder = new Random().Next(100)
            };
        }

        public List<Section> GetBySectionGroupId(Guid id)
        {
            return new List<Section>
            {
                GetById(new Guid()),
                GetById(new Guid()),
                GetById(new Guid())
            };
        }

        public bool Save(Section section)
        {
            return true;
            //TODO Complete this
        }

        public bool Delete(Section section)
        {
            return true;
            //TODO Complete this
        }

        public bool DeleteById(Guid value)
        {
            return true;
            //TODO Complete this
        }

        public Section GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}