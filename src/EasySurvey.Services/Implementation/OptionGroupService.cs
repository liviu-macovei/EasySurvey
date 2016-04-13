using EasySurvey.Services.ServiceDefinitions;
using EasySurvey.Common.Models;
using System.Collections;
using EasySurvey.Common.Interfaces.Repositories;

namespace EasySurvey.Services.Implementation
{
    public class OptionGroupService : IOptionGroupService
    {

        private IOptionGroupRepository _optionGroupRepo;

        public OptionGroupService(IOptionGroupRepository optionGroupRepo)
        {
            _optionGroupRepo = optionGroupRepo;
        }

        public bool Delete(OptionGroup element)
        {
            return _optionGroupRepo.Delete(element);
        }

        public bool DeleteById(int value)
        {
            return _optionGroupRepo.DeleteById(value);
        }

        public IEnumerable GetAll()
        {
            return _optionGroupRepo.GetAll();
        }

        public OptionGroup GetById(int id)
        {
            return _optionGroupRepo.Find(id);
        }

        public bool Save(OptionGroup element)
        {
            if (element.Id == 0)
                element = _optionGroupRepo.Add(element);
            else
                element = _optionGroupRepo.Update(element);

            return true;
        }
    }
}
