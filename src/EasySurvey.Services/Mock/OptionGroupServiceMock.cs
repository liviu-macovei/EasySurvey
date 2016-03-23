using System;
using System.Collections;
using System.Collections.Generic;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class OptionGroupServiceMock : IOptionGroupService
    {
        public OptionGroup GetById(int id)
        {
            switch (id)
            {
                case 1:
                    return new OptionGroup
                    {
                        Id = id,
                        Name = "MultiSelect" + id
                    };
                case 2:
                    return new OptionGroup
                    {
                        Id = id,
                        Name = "SingleSelection" + id
                    };
                default:
                    return new OptionGroup
                    {
                        Id = id,
                        Name = "Yes/No" + id
                    };
            }
        }

        public IEnumerable GetAll()
        {
            return new List<OptionGroup>()
            {
                GetById(1),
                GetById(2),
                GetById(3)
            };
        }

        public bool Save(OptionGroup element)
        {
            throw new NotImplementedException();
        }

        public bool Delete(OptionGroup element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(int value)
        {
            throw new NotImplementedException();
        }
    }
}