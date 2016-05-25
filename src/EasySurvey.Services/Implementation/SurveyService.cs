using System;
using System.Collections.Generic;
using System.Linq;
using EasySurvey.Common.Interfaces.Repositories;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.Implementation
{
    public class SurveyService : ServiceDefinitions.ISurveyService
    {
        ICustomerRepository _customerRepo;
        ISurveyRepository _surveyRepo;
        ISurveyTemplateRepository _surveyTemplateRepo;
        public SurveyService(ICustomerRepository customerRepo, ISurveyRepository surveyRepo
            , ISurveyTemplateRepository surveyTemplateRepo)
        {
            _customerRepo = customerRepo;
            _surveyRepo = surveyRepo;
            _surveyTemplateRepo = surveyTemplateRepo;
        }

        public bool Delete(Survey element)
        {
            try
            {
                return _surveyRepo.Delete(element);
            }
            catch (Exception ex)
            {
                //Maybe log
                return false;
            }
        }

        public bool DeleteById(int value)
        {
            return _surveyRepo.DeleteById(value);
        }

        public Survey GetById(int id)
        {
            return _surveyRepo.Find(id);
        }

        public List<Survey> GetByUserId(string userId)
        {
            return _surveyRepo.GetAllByUserId(userId).ToList();
        }

        public bool Save(Survey element)
        {
            if (element.Id == 0)
            {
                var surveyTemplate = _surveyTemplateRepo.GetById(element.SurveyTemplateId);
                var customer = _customerRepo.Find(element.CustomerId);
                foreach (var sectionGroup in surveyTemplate.SectionGroup)
                {
                    var address = new Address() { Recipient = customer.Name, AddressLine1 = customer.Address };
                    var answergroup = new AnswerGroup()
                    {
                        SectionGroupId = sectionGroup.Id,
                        SurveyId = element.Id,
                        IsUsed = sectionGroup.IsMandatory ? true : false,
                        Address = address,
                    };

                    if (answergroup.IsUsed)
                    {
                        foreach (var section in sectionGroup.Section.OrderBy(item=>item.SortOrder))
                        {
                            var answerSection = new AnswerSection()
                            {
                                SectionId = section.Id,
                                Order = element.AnswerGroup.Count + 1
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
                            answergroup.AnswerSection.Add(answerSection);
                        }
                    }
                    element.AnswerGroup.Add(answergroup);
                }

                element = _surveyRepo.Add(element);
            }
            else
                element = _surveyRepo.Update(element);

            return true;
        }
    }
}
