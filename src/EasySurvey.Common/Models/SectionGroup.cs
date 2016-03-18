using System;
using System.Collections.Generic;

namespace EasySurvey.Common.Models
{
    public class SectionGroup
    {
        public SectionGroup()
        {
            AnswerGroup = new HashSet<AnswerGroup>();
            Section = new HashSet<Section>();
        }

        public Guid Id { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public bool? IsMandatory { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public int SortOrder { get; set; }
        public Guid? SurveyTemplateId { get; set; }
        public string Title { get; set; }

        public virtual ICollection<AnswerGroup> AnswerGroup { get; set; }
        public virtual ICollection<Section> Section { get; set; }
        public virtual SurveyTemplate SurveyTemplate { get; set; }
    }
}
