using System;
using System.Collections.Generic;

namespace EasySurvey.Common.Models
{
    public partial class Section
    {
        public Section()
        {
            AnswerSection = new HashSet<AnswerSection>();
            Question = new HashSet<Question>();
        }

        public int Id { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string Description { get; set; }
        public bool IsRepeatable { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public int SectionGroupId { get; set; }
        public int SortOrder { get; set; }
        public string Title { get; set; }

        public virtual ICollection<AnswerSection> AnswerSection { get; set; }
        public virtual ICollection<Question> Question { get; set; }
        public virtual SectionGroup SectionGroup { get; set; }
    }
}
