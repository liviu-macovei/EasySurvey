using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface ISectionGroupService : IProcessOperations<SectionGroup>
    {
        ICollection<SectionGroup> GetBySurveyTemplateId(int id);
        bool Exists(int? id);
    }
}