namespace EasySurvey.Web.ViewModels.Survey
{
    public class SectionGroupViewModel : Common.Models.SectionGroup
    {
        public SectionGroupViewModel()
        {
            if (IsMandatory)
                IsSelected = true;
        }

        public SectionGroupViewModel(Common.Models.SectionGroup sectionGroup)
        {
            Id = sectionGroup.Id;            
            Title = sectionGroup.Title;
            IsMandatory = sectionGroup.IsMandatory;
            if (sectionGroup.IsMandatory)
                IsSelected = true;
        }

        public bool IsSelected { get; set; }

      
    }
}
