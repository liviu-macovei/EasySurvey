using System;
using System.Collections.Generic;

namespace EasySurvey.Services.Models
{
    public partial class OptionGroup
    {
        public OptionGroup()
        {
            Option = new HashSet<Option>();
            Question = new HashSet<Question>();
        }

        public int Id { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Option> Option { get; set; }
        public virtual ICollection<Question> Question { get; set; }
    }
}
