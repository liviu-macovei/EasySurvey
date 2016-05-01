using System;
using System.Collections.Generic;

namespace EasySurvey.Common.Models
{
    public partial class Address
    {
        public Address()
        {
            AnswerGroup = new HashSet<AnswerGroup>();
        }

        public int Id { get; set; }
        public string AddressLine1 { get; set; }
        public string AddressLine2 { get; set; }
        public string AddressLine3 { get; set; }
        public string CareOf { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public string PostalCode { get; set; }
        public string Recipient { get; set; }

        public virtual ICollection<AnswerGroup> AnswerGroup { get; set; }
    }
}
