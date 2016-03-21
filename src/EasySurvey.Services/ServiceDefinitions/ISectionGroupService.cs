using System;
using System.Collections.ObjectModel;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface ISectionGroupService:IProcessOperations<SectionGroup>
    {
        Collection<SectionGroup> GetBySurveyTemplateId(Guid id);
        SectionGroup GetById(Guid id);       
        bool Exists(Guid? id);       
    }
}