using System;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class OptionGroupServiceMock : IOptionGroupService
    {
        public OptionGroup GetById(int id)
        {
            return new OptionGroup
            {
                Id = id,
                Name = "Mock Option Group" + id
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

        public bool DeleteById(Guid value)
        {
            throw new NotImplementedException();
        }
    }
}