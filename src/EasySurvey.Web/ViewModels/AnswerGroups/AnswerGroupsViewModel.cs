using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EasySurvey.Web.ViewModels.AnswerGroups
{
    public class AnswerGroupsViewModel 
    {
        public int SurveyId { get; set; }
        public int SectionGroupId { get; set; }
        public ICollection<AnswerGroupViewModel> AnswerGroupViewModel { get; set; }
        public AnswerGroupsViewModel()
        {
            AnswerGroupViewModel = new List<AnswerGroupViewModel>();
        }
    }
}
