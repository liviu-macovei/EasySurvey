using EasySurvey.Common.Models;
using System.Collections.Generic;

namespace EasySurvey.Common.Interfaces.Repositories
{
    public interface IOptionGroupRepository
    {
        ICollection<OptionGroup> GetAll();
        OptionGroup Find(int id);
        OptionGroup Add(OptionGroup optionGroup);
        OptionGroup Update(OptionGroup optionGroup);
        bool Delete(OptionGroup optionGroup);
        bool DeleteById(int id);
    }
}
