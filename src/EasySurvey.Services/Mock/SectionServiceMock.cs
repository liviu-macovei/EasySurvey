using System;
using System.Collections.Generic;
using System.Linq;
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
                SectionGroupId = Guid.NewGuid(),
                SortOrder = MockRandom.Random().Next(100),
                Question = new List<Question>
                {
                    new QuestionServiceMock().GetById(MockRandom.Random().Next(100)),
                    new QuestionServiceMock().GetById(MockRandom.Random().Next(100)),
                    new QuestionServiceMock().GetById(MockRandom.Random().Next(100))
                }
            };
        }

        public List<Section> GetBySectionGroupId(Guid id)
        {
            return new List<Section>
            {
                GetById(Guid.NewGuid()),
                GetById(Guid.NewGuid()),
                GetById(Guid.NewGuid())
            }.OrderBy(m => m.SortOrder).ToList();
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