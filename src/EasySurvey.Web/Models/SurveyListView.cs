namespace EasySurvey.Web.Models
{
    public class SurveyListView
    {
        public int Id { get; set; }
        public int SurveyTemplateId { get; set; }
        public int CustomerId { get; set; }
        public string CustomerName { get; set; }
        public string UserId { get; set; }
        public string UserName { get; set; }
        public string SurveyState { get; set; }        
        //public string SurveyTemplate { get; set; }
    }
}
