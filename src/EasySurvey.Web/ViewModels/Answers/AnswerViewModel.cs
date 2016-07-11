using EasySurvey.Common.Models;
using Microsoft.AspNet.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EasySurvey.Web.ViewModels.Answers
{
    public class AnswerViewModel
    {
        public AnswerViewModel()
        {
        }

        public AnswerViewModel(Common.Models.Answer answer)
        {
            Id = answer.Id;
            AnswerSectionId = answer.AnswerSectionId.Value;
            QuestionId = answer.QuestionId;
            AnswerText = answer.AnswerText;
            Comments = answer.DefaultComments;
            
            InHighlighted = answer.InHighlighted;
            IsValid = answer.IsValid;
            IsFinal = answer.IsFinal;
            OptionId = answer.OptionId;

            if (answer.Question != null)
            {
                SectionId = answer.Question.SectionId;
                QuestionTypeId = answer.Question.QuestionTypeId;
                QuestionText = answer.Question.QuestionText;
                IsMandatory = answer.Question.IsMandatory;
                AnswerLabel = answer.Question.AnswerLabel;
                AnswerValidationExpression = answer.Question.AnswerValidationExpression;
                HelpText = answer.Question.HelpText;
                DefaultComments = answer.Question.DefaultComments;
                OptionGroupId = answer.Question.OptionGroupId;
                if(answer.Question.OptionGroup != null)
                {
                    Options = answer.Question.OptionGroup.Option.ToList();
                }
            }
            if (string.IsNullOrEmpty(Comments) && !string.IsNullOrEmpty(DefaultComments))
                Comments = DefaultComments;
        }

        public int Id { get; set; }
        public int AnswerSectionId { get; set; }
        public int SectionId { get; set; }
        public int QuestionId { get; set; }
        public int QuestionTypeId { get; set; }
        public string QuestionText { get; set; }
        public bool IsMandatory { get; set; }
        public string AnswerLabel { get; set; }
        public string AnswerValidationExpression { get; set; }
        public string AnswerText { get; set; }
        public string DefaultComments { get; set; }
        public string Comments { get; set; }
        public bool InHighlighted { get; set; }
        public bool IsFinal { get; set; }
        public bool IsValid { get; set; }
        public int? OptionGroupId { get; set; }
        public int? OptionId { get; set; }
        public int SortOrder { get; set; }
        public string HelpText { get; set; }
        public List<Option> Options { get; set; }
        //public Dictionary<int, AnswerViewModel> ChildAnswer { get; set; }
    }
}
