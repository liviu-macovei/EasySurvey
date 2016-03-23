using System;
using System.Collections.Generic;

namespace EasySurvey.Repositories
{
    public partial class SurveyState
    {
        public SurveyState()
        {
            Survey = new HashSet<Survey>();
        }

        public int Id { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Survey> Survey { get; set; }
    }
}
