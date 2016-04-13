using System.Collections.Generic;
using System.Data.Common;
using EasySurvey.Common.Models;

namespace EasySurvey.Common.Interfaces.Repositories
{
    public interface IOptionRepository
    { 
        ICollection<Option> GetAll();
        Option Find(int id);
        Option Add(Option option);        
        Option Update(Option option);
        bool Delete(Option option);
        bool DeleteById(int id);
        ICollection<Option> FindAllByOptionGroupId(int optionGroupId);        
    }
}