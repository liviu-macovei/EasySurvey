using System;
using System.Linq;
using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Repositories;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Implementation
{
    public class AnswerGroupService : IAnswerGroupService
    {
        private IAnswerGroupRepository _answerGroupRepo;
        private ICustomerRepository _customerRepo;

        public AnswerGroupService(IAnswerGroupRepository answerGroupRepo,
            ICustomerRepository customerRepository)
        {
            _answerGroupRepo = answerGroupRepo;
            _customerRepo = customerRepository;
        }

        public ICollection<AnswerGroup> GetAll()
        {
            return _answerGroupRepo.GetAll();
        }

        public bool Save(AnswerGroup answerGroup)
        {
            if (answerGroup.Id == 0)
                answerGroup = _answerGroupRepo.Add(answerGroup);
            else
            {
                if (answerGroup.IsUsed)
                {
                    if (!answerGroup.AddressId.HasValue)
                    {
                        if (answerGroup.Survey != null)
                        {
                            var customer = _customerRepo.Find(answerGroup.Survey.CustomerId);
                            answerGroup.Address = new Address() { Recipient = customer.Name, AddressLine1 = customer.Address };
                        }
                        else
                        {
                            answerGroup.Address = new Address();
                        }
                    }

                    if (answerGroup.AnswerSection.Count() == 0)
                    {
                        foreach (var section in answerGroup.SectionGroup.Section.OrderBy(item => item.SortOrder))
                        {
                            var answerSection = new AnswerSection()
                            {
                                SectionId = section.Id,
                                Order = answerGroup.AnswerSection.Count + 1
                            };

                            foreach (var question in section.Question.OrderBy(item => item.SortOrder))
                            {
                                var answer = new Answer()
                                {
                                    OptionId = null,
                                    InHighlighted = false,
                                    IsFinal = false,
                                    IsValid = false,
                                    QuestionId = question.Id,
                                    OptionGroupId = question.OptionGroupId
                                };
                                answerSection.Answer.Add(answer);
                            }
                            answerGroup.AnswerSection.Add(answerSection);
                        }
                    }
                    answerGroup = _answerGroupRepo.Update(answerGroup);
                }
                else
                {
                    answerGroup = _answerGroupRepo.Use(answerGroup);
                }
            }
            return true;
        }

        public bool Delete(AnswerGroup element)
        {
            return _answerGroupRepo.Delete(element);
        }

        public bool DeleteById(int value)
        {
            return _answerGroupRepo.DeleteById(value);
        }

        public AnswerGroup GetById(int id)
        {
            return _answerGroupRepo.Find(id);
        }

        public ICollection<AnswerGroup> GetBySurveyId(int id)
        {
            return _answerGroupRepo.FindAllBySurveyId(id);
        }

        public AnswerGroup GetBySectionGroupId(int id)
        {
            return _answerGroupRepo.FindBySectionGroupId(id);
        }

        public bool Extend(AnswerGroup answerGroup)
        {
            if (answerGroup.IsUsed)
            {
                var existingAnswerGroups = _answerGroupRepo.GetBySectionGroupId(answerGroup.SectionGroupId);
                int sortOrder = existingAnswerGroups.Max(item => item.SortOrder);

                Address address;
                if (answerGroup.Survey != null)
                {
                    var customer = _customerRepo.Find(answerGroup.Survey.CustomerId);
                    address = new Address() { Recipient = customer.Name, AddressLine1 = customer.Address };
                }
                else
                    address = new Address();

                var answerGroupForExtention = new AnswerGroup()
                {
                    Id = 0,
                    SurveyId = answerGroup.SurveyId,
                    SectionGroupId = answerGroup.SectionGroupId,
                    IsUsed = answerGroup.IsUsed,
                    SortOrder = sortOrder + 1,
                    Address = address
                };
                
                foreach (var section in answerGroup.SectionGroup.Section.OrderBy(item => item.SortOrder))
                {
                    if (section.IsRepeatable)
                    {
                        var answerSection = new AnswerSection()
                        {
                            SectionId = section.Id,
                            Order = answerGroup.AnswerSection.Count + 1
                        };

                        foreach (var question in section.Question.OrderBy(item => item.SortOrder))
                        {
                            var answer = new Answer()
                            {
                                OptionId = null,
                                InHighlighted = false,
                                IsFinal = false,
                                IsValid = false,
                                QuestionId = question.Id,
                                OptionGroupId = question.OptionGroupId
                            };
                            answerSection.Answer.Add(answer);
                        }
                        answerGroupForExtention.AnswerSection.Add(answerSection);
                    }
                }
                return this.Save(answerGroupForExtention);
            }
            return false;
        }
    }
}



