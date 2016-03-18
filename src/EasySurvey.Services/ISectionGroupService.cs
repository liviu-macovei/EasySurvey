using System;
using System.Collections.ObjectModel;
using EasySurvey.Common.Models;

namespace EasySurvey.Services
{
    public interface ISectionGroupService
    {
        Collection<SectionGroup> GetBySurveyId(Guid id);
    }
}