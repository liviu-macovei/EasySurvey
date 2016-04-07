using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EasySurvey.Common.Models;

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
            IsUsed = answerGroup.IsUsed;
            SectionGroupId = answerGroup.SectionGroupId;
            SurveyId = answerGroup.SurveyId;
            SectionGroupTitle = answerGroup.SectionGroup.Title;
            IsMandatory = answerGroup.SectionGroup.IsMandatory;
            SectionGroup = answerGroup.SectionGroup;
        }

        public int Id { get; set; }    
        public bool IsUsed { get; set; }
        public bool IsMandatory { get; set; }
        public int SectionGroupId { get; set; }
        public int SurveyId { get; set; }
        public string SectionGroupTitle { get; set; }
        public SectionGroup SectionGroup { get; set; }
    }
}
