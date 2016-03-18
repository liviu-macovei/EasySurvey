using System;
using System.Collections.Generic;

namespace EasySurvey.Services.Models
{
    public partial class SurveyTemplate
    {
        public SurveyTemplate()
        {
            SectionGroup = new HashSet<SectionGroup>();
            Survey = new HashSet<Survey>();
        }

        public Guid Id { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string Description { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public Guid OwnerId { get; set; }
        public int SurveyTypeId { get; set; }
        public string TaskDetails { get; set; }
        public string Title { get; set; }

        public virtual ICollection<SectionGroup> SectionGroup { get; set; }
        public virtual ICollection<Survey> Survey { get; set; }
        public virtual Owner Owner { get; set; }
        public virtual SurveyType SurveyType { get; set; }
    }
}
