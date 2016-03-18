using System;
using System.Collections.Generic;

namespace EasySurvey.Common.Models
{
    public class Owner
    {
        public Owner()
        {
            SurveyTemplate = new HashSet<SurveyTemplate>();
        }

        public Guid Id { get; set; }
        public string AddressLine1 { get; set; }
        public string AddressLine2 { get; set; }
        public string AddressLine3 { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public string Name { get; set; }
        public string PostalCode { get; set; }
        public int? TemplateLimit { get; set; }

        public virtual ICollection<SurveyTemplate> SurveyTemplate { get; set; }
    }
}
