using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EasySurvey.Common.Models;
using EasySurvey.Web.ViewModels.AnswerSections;
using System.ComponentModel.DataAnnotations;
using System.Collections;

namespace EasySurvey.Web.ViewModels.AnswerGroups
{
    public class AnswerGroupViewModel
    {
        public AnswerGroupViewModel()
        {
        }

        public AnswerGroupViewModel(Common.Models.AnswerGroup answerGroup)
        {
            Id = answerGroup.Id;
            SectionGroupId = answerGroup.SectionGroupId;
            SurveyId = answerGroup.SurveyId;
            Title = answerGroup.SectionGroup.Title;
            IsMandatory = answerGroup.SectionGroup.IsMandatory;
            IsUsed = answerGroup.IsUsed;

            if (answerGroup.AddressId.HasValue && answerGroup.Address != null)
            {
                AddressId = answerGroup.Address.Id;
                Recipient = answerGroup.Address.Recipient;
                AddressLine1 = answerGroup.Address.AddressLine1;
                PostalCode = answerGroup.Address.PostalCode;
                City = answerGroup.Address.City;
                Country = answerGroup.Address.Country;
            }

            SectionGroup = answerGroup.SectionGroup;
            AnswerSection = new AnswerSectionsViewModel();
            foreach (var answerSection in answerGroup.AnswerSection.OrderBy(item=>item.Order))
            {
                AnswerSection.Add(new AnswerSectionViewModel(answerSection));
            }
        }

        public int Id { get; set; }
        public int SectionGroupId { get; set; }
        public int SurveyId { get; set; }
        public string Title { get; set; }
        public bool IsMandatory { get; set; }
        [Display(Name = "Wish to fill this area")]
        public bool IsUsed { get; set; }

        // Address Fields
        public int AddressId { get; set; }
        public string Recipient { get; set; }
        public string AddressLine1 { get; set; }
        public string PostalCode { get; set; }
        public string City { get; set; }
        public string Country { get; set; }

        public SectionGroup SectionGroup { get; set; }
        public virtual AnswerSectionsViewModel AnswerSection { get; set; }
    }

    public class AnswerSectionsViewModel : List<AnswerSectionViewModel>
    {
        public AnswerSectionsViewModel() : base()
        {
        }
    }
}
