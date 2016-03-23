using System;
using System.Collections.Generic;

namespace EasySurvey.Repositories
{
    public partial class Survey
    {
        public Survey()
        {
            Answer = new HashSet<Answer>();
            AnswerGroup = new HashSet<AnswerGroup>();
            Comment = new HashSet<Comment>();
        }

        public int Id { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public int CustomerId { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public int SurveyStateId { get; set; }
        public int SurveyTemplateId { get; set; }
        public string UserId { get; set; }

        public virtual ICollection<Answer> Answer { get; set; }
        public virtual ICollection<AnswerGroup> AnswerGroup { get; set; }
        public virtual ICollection<Comment> Comment { get; set; }
        public virtual Customer Customer { get; set; }
        public virtual SurveyState SurveyState { get; set; }
        public virtual SurveyTemplate SurveyTemplate { get; set; }
    }
}
