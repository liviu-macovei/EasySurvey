using System;
using System.Collections.Generic;

namespace EasySurvey.Common.Models
{
    public partial class Comment
    {
        public int Id { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string Description { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public int SurveyId { get; set; }
        public string UserId { get; set; }

        public virtual Survey Survey { get; set; }
    }
}
