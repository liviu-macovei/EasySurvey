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
                    {
                        var options = new List<Option>()
                        {
                            new Option() { Id = 1, OptionGroupId = id, Name = "MultiSelectOption1"  }
                            , new Option() { Id = 2, OptionGroupId = id, Name = "MultiSelectOption2"  }
                            , new Option() { Id = 3, OptionGroupId = id, Name = "MultiSelectOption3"  }
                        };
                        return new OptionGroup
                        {
                            Id = id,
                            Name = "MultiSelect" + id,
                            Option = options
                        };
                    }
                case 2:
                    {
                        var options = new List<Option>()
                        {
                            new Option() { Id = 4, OptionGroupId = id, Name = "SingleSelectionOption1"  }
                            , new Option() { Id = 5, OptionGroupId = id, Name = "SingleSelectionOption2"  }
                            , new Option() { Id = 6, OptionGroupId = id, Name = "SingleSelectionOption3"  }
                        };
                        return new OptionGroup
                        {
                            Id = id,
                            Name = "SingleSelection" + id,
                            Option = options
                        };
                    }
                default:
                    {
                        var options = new List<Option>()
                        {
                            new Option() { Id = 7, OptionGroupId = id, Name = "Yes"  }
                            , new Option() { Id = 8, OptionGroupId = id, Name = "No"  }
                        };
                        return new OptionGroup
                        {
                            Id = id,
                            Name = "Yes/No" + id,
                            Option = options
                        };

                    }
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