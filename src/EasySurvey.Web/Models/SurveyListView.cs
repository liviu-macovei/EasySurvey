using System;

namespace EasySurvey.Web.Models
{
    public class SurveyListView
    {
        public Guid Id { get; set; }
        public Guid SurveyTemplateId { get; set; }
        public Guid CustomerId { get; set; }
        public string CustomerName { get; set; }
        public string UserId { get; set; }
        public string UserName { get; set; }
        public string SurveyState { get; set; }        
        //public string SurveyTemplate { get; set; }
    }
}
