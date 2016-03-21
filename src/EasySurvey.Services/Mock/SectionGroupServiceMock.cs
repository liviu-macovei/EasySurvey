using System;
using System.Collections.ObjectModel;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class SectionGroupServiceMock : ISectionGroupService
    {
        public Collection<SectionGroup> GetBySurveyTemplateId(Guid id)
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

        public bool Save(SectionGroup sectionGroup)
        {
            return true;
            //TODO Implement
        }

        public bool Delete(SectionGroup element)
        {
            throw new NotImplementedException();
        }

        public bool Exists(Guid? id)
        {
            return true;
        }

        public bool DeleteById(Guid id)
        {
            return true;
        }

        public SectionGroup GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}