using System;
using System.Collections.Generic;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class AnswerGroupServiceMock : IAnswerGroupService
    {
        public AnswerGroup GetById(Guid id)
        {
            return new AnswerGroup {Id = id, AnalysisId = new Guid?(), SectionGroupId = new Guid()};
        }

        public AnswerGroup GetBySectionGroupId(Guid id)
        {
            return new AnswerGroup {Id = new Guid(), AnalysisId = new Guid?(), SectionGroupId = id};
        }

        public ICollection<AnswerGroup> GetBySurveyId(Guid id)
        {
            return new List<AnswerGroup>
            {
                new AnswerGroup {Id = new Guid(), AnalysisId = id, SectionGroupId = new Guid()}
            };
        }

        public bool Save(AnswerGroup element)
        {
            throw new NotImplementedException();
        }

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
    }
}