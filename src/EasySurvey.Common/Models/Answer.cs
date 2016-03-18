using System;

namespace EasySurvey.Common.Models
{
    public class Answer
    {
        public Guid Id { get; set; }
        public Guid AnalysisId { get; set; }
        public Guid? AnswerGroupId { get; set; }
        public string AnswerText { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public bool InHighlighted { get; set; }
        public bool? IsFinal { get; set; }
        public bool IsValid { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public int? OptionGroupId { get; set; }
        public int? OptionId { get; set; }
        public int QuestionId { get; set; }

        public virtual Survey Analysis { get; set; }
        public virtual Question Question { get; set; }
        public virtual Option Option { get; set; }
    }
}
