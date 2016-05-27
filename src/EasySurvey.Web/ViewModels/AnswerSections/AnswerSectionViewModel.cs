using EasySurvey.Web.ViewModels.Answers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EasySurvey.Web.ViewModels.AnswerSections
{
    public class AnswerSectionViewModel
    {
        public AnswerSectionViewModel()
        {
        }

        public AnswerSectionViewModel(Common.Models.AnswerSection answerSection)
        {
            Id = answerSection.Id;
            SectionId = answerSection.SectionId;
            AnswerGroupId = answerSection.AnswerGroupId;
            SortOrder = answerSection.Order;

            if (answerSection.Section != null)
            {
                SectionGroupId = answerSection.Section.SectionGroupId;
                Title = answerSection.Section.Title;
                Description = answerSection.Section.Description;
                IsRepeatable = answerSection.Section.IsRepeatable;
            }
            Answer = new AnswersViewModel();
            foreach (var answer in answerSection.Answer.OrderBy(item=>item.Question.SortOrder))
            {
                Answer.Add(new AnswerViewModel(answer));
            }
        }

        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public bool IsRepeatable { get; set; }
        public int SortOrder { get; set; }
        public int SectionGroupId { get; set; }
        public int SectionId { get; set; }
        public int AnswerGroupId { get; set; }
        public AnswersViewModel Answer { get; set; }
    }

    public class AnswersViewModel: List<AnswerViewModel>
    {
        public AnswersViewModel() : base()
        {
        }
    }
}
