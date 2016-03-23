using System;
using System.Collections.Generic;
using System.Linq;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class SectionServiceMock : ISectionService
    {
        public Section GetById(int id)
        {
            return new Section
            {
                Id = id,
                Title = "Mock Section" + id,
                Description = "Mock Description of section",
                SectionGroupId = MockRandom.Random().Next(100),
                SortOrder = MockRandom.Random().Next(100),
                Question = new List<Question>
                {
                    new QuestionServiceMock().GetById(MockRandom.Random().Next(100)),
                    new QuestionServiceMock().GetById(MockRandom.Random().Next(100)),
                    new QuestionServiceMock().GetById(MockRandom.Random().Next(100))
                }
            };
        }

        public List<Section> GetBySectionGroupId(int id)
        {
            return new List<Section>
            {
                GetById(MockRandom.Random().Next(100)),
                GetById(MockRandom.Random().Next(100)),
                GetById(MockRandom.Random().Next(100))
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

        public bool DeleteById(int value)
        {
            return true;
            //TODO Complete this
        }
    }
}