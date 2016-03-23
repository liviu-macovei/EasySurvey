using System;
using System.Collections.Generic;

namespace EasySurvey.Repositories
{
    public partial class Question
    {
        public Question()
        {
            Answer = new HashSet<Answer>();
            NextQuestion = new HashSet<NextQuestion>();
            NextQuestionNavigation = new HashSet<NextQuestion>();
        }

        public int Id { get; set; }
        public string AnswerLabel { get; set; }
        public string AnswerValidationExpression { get; set; }
        public string Comments { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string HelpText { get; set; }
        public bool? IsMandatory { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public int? OptionGroupId { get; set; }
        public string QuestionText { get; set; }
        public int QuestionTypeId { get; set; }
        public int SectionId { get; set; }

        public virtual ICollection<Answer> Answer { get; set; }
        public virtual ICollection<NextQuestion> NextQuestion { get; set; }
        public virtual ICollection<NextQuestion> NextQuestionNavigation { get; set; }
        public virtual OptionGroup OptionGroup { get; set; }
        public virtual QuestionType QuestionType { get; set; }
        public virtual Section Section { get; set; }
    }
}
