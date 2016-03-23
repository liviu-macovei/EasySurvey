using System;
using System.Collections.Generic;

namespace EasySurvey.Common.Model
{
    public partial class Answer
    {
        public int Id { get; set; }
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
        public int SurveyId { get; set; }

        public virtual Question Question { get; set; }
        public virtual Survey Survey { get; set; }
        public virtual Option Option { get; set; }
    }
}
