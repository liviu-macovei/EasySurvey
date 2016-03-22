using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface ISectionGroupService:IProcessOperations<SectionGroup>
    {
        ICollection<SectionGroup> GetBySurveyTemplateId(Guid id);
        SectionGroup GetById(Guid id);       
        bool Exists(Guid? id);       
    }
}