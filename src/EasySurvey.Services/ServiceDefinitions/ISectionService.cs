using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface ISectionService : IProcessOperations<Section>
    {
        List<Section> GetBySectionGroupId(int id);
    }
}