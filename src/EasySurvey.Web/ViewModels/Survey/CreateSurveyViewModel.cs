using System.Collections.Generic;
using EasySurvey.Common.Models;
using EasySurvey.Web.ViewModels.SectionGroup;

namespace EasySurvey.Web.ViewModels.Survey
{
    public class CreateSurveyViewModel
    {
        public int Id { get; set; }

        public int CustomerId { get; set; }

        public List<Common.Models.Customer> Customers { get; set; }
        public ICollection<SelectSectionGroupViewModel> SectionGroups { get; set; }
    }
}
