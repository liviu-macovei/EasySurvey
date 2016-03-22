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

        public bool DeleteById(Guid value)
        {
            throw new NotImplementedException();
        }

        public AnswerGroup GetById(int id)
        {
            throw new NotImplementedException();
        }

        public AnswerGroup GetById(Guid id)
        {
            return new AnswerGroup {Id = id, AnalysisId = new Guid?(), SectionGroupId = Guid.NewGuid()};
        }

        public AnswerGroup GetBySectionGroupId(Guid id)
        {
            return new AnswerGroup {Id = Guid.NewGuid(), AnalysisId = new Guid?(), SectionGroupId = id};
        }

        public ICollection<AnswerGroup> GetBySurveyId(Guid id)
        {
            return new List<AnswerGroup>
            {
                new AnswerGroup {Id = Guid.NewGuid(), AnalysisId = id, SectionGroupId = Guid.NewGuid()}
            };
        }


        public bool Save(AnswerGroup element)
        {
            throw new NotImplementedException();
        }
    }
}