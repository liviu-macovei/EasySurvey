using EasySurvey.Common.Models;

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
    }
}