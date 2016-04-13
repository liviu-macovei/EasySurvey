using EasySurvey.Common.Models;
using Microsoft.AspNet.Mvc.Rendering;

namespace EasySurvey.Web.ViewModels.OptionGroups
{
    public class ListOptionGroupsViewModel
    {
        public SelectList OptionGroups { get; set; }
    
        public int OptionGroupId { get; set; }
    }
}