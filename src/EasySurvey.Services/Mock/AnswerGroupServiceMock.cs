using System;
using System.Collections.Generic;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class AnswerGroupServiceMock : IAnswerGroupService
    {
        public bool Delete(AnswerGroup element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(int value)
        {
            throw new NotImplementedException();
        }
      

        public AnswerGroup GetById(int id)
        {
            return new AnswerGroup {Id = id, SurveyId = new int?(), SectionGroupId = MockRandom.Random().Next(100)};
        }

        public AnswerGroup GetBySectionGroupId(int id)
        {
            return new AnswerGroup {Id = MockRandom.Random().Next(100), SurveyId = new int?(), SectionGroupId = id};
        }

        public ICollection<AnswerGroup> GetBySurveyId(int id)
        {
            return new List<AnswerGroup>
            {
                new AnswerGroup {Id = MockRandom.Random().Next(100), SurveyId = id, SectionGroupId = MockRandom.Random().Next(100)}
            };
        }


        public bool Save(AnswerGroup element)
        {
            throw new NotImplementedException();
        }
    }
}