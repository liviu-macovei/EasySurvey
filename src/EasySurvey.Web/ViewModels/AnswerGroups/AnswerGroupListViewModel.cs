using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EasySurvey.Web.ViewModels.AnswerGroups
{
    public class AnswerGroupListViewModel
    {
        public int SurveyId { get; set; }
        public ICollection<AnswerGroupViewModel> AnswerGroupViewModel { get; set; }
        public int SelectedId { get; set; }
    }
}
