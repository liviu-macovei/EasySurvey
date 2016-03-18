using System;
using System.Collections.Generic;

namespace EasySurvey.Services.Models
{
    public partial class Option
    {
        public Option()
        {
            Answer = new HashSet<Answer>();
        }

        public int Id { get; set; }
        public int OptionGroupId { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string Description { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Answer> Answer { get; set; }
        public virtual OptionGroup OptionGroup { get; set; }
    }
}
