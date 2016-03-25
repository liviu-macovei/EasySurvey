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
        public ICollection<SectionGroup> GetBySurveyTemplateId(int id)
        {
            return new List<SectionGroup>
            {
                GetById(MockRandom.Random().Next(100)),
                GetById(MockRandom.Random().Next(100))
            }.OrderBy(m=>m.SortOrder).ToList();
        }

        public SectionGroup GetById(int id)
        {
            return new SectionGroup
            {
                Id = id,
                IsMandatory =  MockRandom.Random().NextDouble() > 0.5,
                SurveyTemplateId = MockRandom.Random().Next(100),
                SortOrder =  MockRandom.Random().Next(100),
                Title = "Section Group Mock" + id,
                Section = new List<Section>()
                {
                    new SectionServiceMock().GetById(MockRandom.Random().Next(100)),
                    new SectionServiceMock().GetById(MockRandom.Random().Next(100))
                }.OrderBy(m=>m.SortOrder).ToList()
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

        public bool Exists(int? id)
        {
            return true;
        }

        public bool DeleteById(int id)
        {
            return true;
        }
     
    }
}