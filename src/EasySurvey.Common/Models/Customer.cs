using System;
using System.Collections.Generic;

namespace EasySurvey.Common.Models
{
    public partial class Customer
    {
        public Customer()
        {
            Survey = new HashSet<Survey>();
        }

        public int Id { get; set; }
        public string Address { get; set; }
        public string Board { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string CVR { get; set; }
        public string EmployeeCount { get; set; }
        public string GroupSales { get; set; }
        public string HomePage { get; set; }
        public string IndustrialAssociationMembership { get; set; }
        public string IndustrialClassification { get; set; }
        public bool? IsPBSPayment { get; set; }
        public string Management { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public string Name { get; set; }
        public string Owner { get; set; }
        public string Responsible { get; set; }
        public string Subsidiaries { get; set; }
        public string Telephone { get; set; }

        public virtual ICollection<Survey> Survey { get; set; }
    }
}
