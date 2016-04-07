namespace EasySurvey.Web.ViewModels.SectionGroups
{
    public class SelectSectionGroupViewModel : Common.Models.SectionGroup
    {
        public SelectSectionGroupViewModel()
        {
            if (IsMandatory)
                IsSelected = true;
        }

        public SelectSectionGroupViewModel(Common.Models.SectionGroup sectionGroup)
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
