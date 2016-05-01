using System;
using System.Collections.Generic;

namespace EasySurvey.Common.Models
{
    public partial class AnswerGroup
    {
        public AnswerGroup()
        {
            Answer = new HashSet<Answer>();
            AnswerSection = new HashSet<AnswerSection>();
        }

        public int Id { get; set; }
        public int? AddressId { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public bool IsUsed { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public int SectionGroupId { get; set; }
        public int SurveyId { get; set; }

        public virtual ICollection<Answer> Answer { get; set; }
        public virtual ICollection<AnswerSection> AnswerSection { get; set; }
        public virtual Address Address { get; set; }
        public virtual SectionGroup SectionGroup { get; set; }
        public virtual Survey Survey { get; set; }
    }
}
