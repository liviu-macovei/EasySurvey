using System;
using System.Collections.ObjectModel;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.Mock
{
    public class SectionGroupServiceMock : ISectionGroupService
    {
        public Collection<SectionGroup> GetBySurveyId(Guid id)
        {
            return new Collection<SectionGroup>
            {
                GetById(new Guid()),
                GetById(new Guid())
            };
        }

        public SectionGroup GetById(Guid id)
        {
            return new SectionGroup
            {
                Id = id,
                IsMandatory = new Random().NextDouble() > 0.5,
                SurveyTemplateId = new Guid?(),
                SortOrder = new Random().Next(100),
                Title = "Section Group Mock" + id
            };
        }
    }
}