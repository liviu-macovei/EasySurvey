using System;
using System.Collections.Generic;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class OptionServiceMock : IOptionService
    {
        public List<Option> GetOptionsByOptionGroupId(int id)
        {
            // synchronize
            return new List<Option>
            {
                new Option {Id = 1, Name = "Yes"},
                new Option {Id = 2, Name = "No"},
                new Option {Id = 3, Name = "Maybe"}
            };
        }

        public bool Save(Option element)
        {
            throw new NotImplementedException();
        }

        public bool Delete(Option element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(int value)
        {
            throw new NotImplementedException();
        }

        public Option GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}