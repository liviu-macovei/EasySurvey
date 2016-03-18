using System;

namespace EasySurvey.Common.Models
{
    public class Comment
    {
        public Guid Id { get; set; }
        public Guid? AnalysisId { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string Description { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public Guid? UserId { get; set; }

        public virtual Survey Analysis { get; set; }
    }
}