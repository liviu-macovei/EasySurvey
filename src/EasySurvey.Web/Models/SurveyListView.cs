using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EasySurvey.Web.Models
{
    public class SurveyListView
    {
        public System.Guid Id { get; set; }
        public Guid SurveyTemplateId { get; set; }
        public System.Guid CustomerId { get; set; }
        public string CustomerName { get; set; }
        public string UserId { get; set; }
        public string UserName { get; set; }
        public string SurveyState { get; set; }

    }
}
