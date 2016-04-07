using System.Collections.Generic;
using EasySurvey.Web.ViewModels.AnswerGroups;
using CustomerClass = EasySurvey.Common.Models.Customer;
namespace EasySurvey.Web.ViewModels.Survey
{
    public class EditSurveyViewModel
    {


        public EditSurveyViewModel(Common.Models.Survey survey)
        {
            this.Id = survey.Id;
            this.Customer = survey.Customer;
            this.AnswerGroups = new List<AnswerGroupViewModel>();
        }

        public int Id { get; set; }

        public CustomerClass Customer { get; set; }

        public IEnumerable<AnswerGroupViewModel> AnswerGroups { get; set; }
    }
}