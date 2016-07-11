using System;
using System.Collections.Generic;

namespace EasySurvey.Common.Models
{
    public partial class AnswerSection
    {
        public AnswerSection()
        {
            Answer = new HashSet<Answer>();
        }

        public int Id { get; set; }
        public int? AnswerGroupId { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public int Order { get; set; }
        public int SectionId { get; set; }

        public virtual ICollection<Answer> Answer { get; set; }
        public virtual AnswerGroup AnswerGroup { get; set; }
        public virtual Section Section { get; set; }
    }
}
