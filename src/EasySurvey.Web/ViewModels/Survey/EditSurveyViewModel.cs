using System.Collections.Generic;
using EasySurvey.Web.ViewModels.AnswerGroups;
namespace EasySurvey.Web.ViewModels.Survey
{
    public class EditSurveyViewModel
    {
        public EditSurveyViewModel(Common.Models.Survey survey)
        {
            this.Id = survey.Id;
            this.Customer = survey.Customer;
            this.SurveyTemplate = survey.SurveyTemplate;
            this.SurveyState = survey.SurveyState;
            this.AnswerGroups = new List<AnswerGroupViewModel>();
            foreach (var answerGroup in survey.AnswerGroup)
            {
                this.AnswerGroups.Add(new AnswerGroupViewModel(answerGroup));
            }

            Comments = survey.Comment;
        }

        public int Id { get; set; }

        public Common.Models.Customer Customer { get; set; }

        public Common.Models.SurveyTemplate SurveyTemplate { get; set; }

        public Common.Models.SurveyState SurveyState { get; set; }

        public ICollection<AnswerGroupViewModel> AnswerGroups { get; set; }

        public ICollection<Common.Models.Comment> Comments { get; set; }
    }
}