using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EasySurvey.Web.ViewModels.AnswerGroups
{
    public class AnswerGroupSelectViewModel
    {
        public int SurveyId { get; set; }
        public int SectionGroupId { get; set; }
        public AnswerGroupsViewModel AnswerGroupsViewModel { get; set; }
        public AnswerGroupSelectViewModel()
        {
            AnswerGroupsViewModel = new AnswerGroupsViewModel();
        }
    }
}
