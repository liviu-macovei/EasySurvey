using EasySurvey.Common.Interfaces.Repositories;
using EasySurvey.Services.ServiceDefinitions;
using System;
using System.Collections.Generic;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.Implementation
{
    public class OptionService:IOptionService
    {
        private IOptionRepository _optionRepo;

        public OptionService(IOptionRepository optionRepo)
        {
            _optionRepo = optionRepo;
        }

        public bool Delete(Option element)
        {
            return _optionRepo.Delete(element);
        }

        public bool DeleteById(int value)
        {
            return _optionRepo.DeleteById(value);
        }

        public Option GetById(int id)
        {
            return _optionRepo.Find(id);
        }

        public ICollection<Option> GetOptionsByOptionGroupId(int id)
        {
            return _optionRepo.FindAllByOptionGroupId(id);
        }

        public bool Save(Option element)
        {
            if (element.Id == 0)
                element = _optionRepo.Add(element);
            else
                element = _optionRepo.Update(element);

            return true;
        }
    }
}
