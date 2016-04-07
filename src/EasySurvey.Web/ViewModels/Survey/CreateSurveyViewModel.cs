using System.Collections.Generic;

namespace EasySurvey.Web.ViewModels.Survey
{
    public class CreateSurveyViewModel
    {
        public int Id { get; set; }
        public int CustomerId { get; set; }
        public List<Common.Models.Customer> Customers { get; set; }
        public int SurveyTemplateId { get; set; }
        public List<Common.Models.SurveyTemplate> SurveyTemplates { get; set; }
        public IEnumerable<SectionGroupViewModel> SectionGroups { get; set; }
    }
}