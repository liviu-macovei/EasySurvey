using System;

namespace EasySurvey.Common.Models
{
    public partial class NextQuestion
    {
        public int Id { get; set; }
        public int BaseQuestionId { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedOn { get; set; }
        public int? NextQuestionId { get; set; }
        public int OptionGroupId { get; set; }
        public int OptionId { get; set; }
        public int? SortOrder { get; set; }

        public virtual Question BaseQuestion { get; set; }
        public virtual Question NextQuestionNavigation { get; set; }
    }
}
