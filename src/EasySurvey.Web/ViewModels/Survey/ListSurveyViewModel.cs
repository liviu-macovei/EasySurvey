using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EasySurvey.Web.ViewModels.Survey
{
    public class ListSurveyViewModel
    {
        public int Id { get; set; }
        public string Customer { get; set; }
        public string SurveyState { get; set; }
        public string SurveyTemplate { get; set; }
        public string UserId { get; set; }
    }
}
