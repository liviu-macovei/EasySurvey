using System;
using System.Collections.Generic;

namespace EasySurvey.Services.Models
{
    public partial class SurveyType
    {
        public SurveyType()
        {
            SurveyTemplate = new HashSet<SurveyTemplate>();
        }

        public int Id { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public string Name { get; set; }

        public virtual ICollection<SurveyTemplate> SurveyTemplate { get; set; }
    }
}
