using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class SectionGroupServiceMock : ISectionGroupService
    {
        public ICollection<SectionGroup> GetBySurveyTemplateId(Guid id)
        {
            return new List<SectionGroup>
            {
                GetById(Guid.NewGuid()),
                GetById(Guid.NewGuid())
            }.OrderBy(m=>m.SortOrder).ToList();
        }

        public SectionGroup GetById(Guid id)
        {
            return new SectionGroup
            {
                Id = id,
                IsMandatory =  MockRandom.Random().NextDouble() > 0.5,
                SurveyTemplateId = Guid.NewGuid(),
                SortOrder =  MockRandom.Random().Next(100),
                Title = "Section Group Mock" + id,
                Section = new List<Section>()
                {
                    new SectionServiceMock().GetById(Guid.NewGuid()),
                    new SectionServiceMock().GetById(Guid.NewGuid())
                }.OrderBy(m=>m.SortOrder.Value).ToList()
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