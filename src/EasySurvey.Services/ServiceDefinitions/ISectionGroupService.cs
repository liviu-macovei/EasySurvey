using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface ISectionGroupService:IProcessOperations<SectionGroup>
    {
        ICollection<SectionGroup> GetBySurveyTemplateId(int id);
        SectionGroup GetById(int id);       
        bool Exists(int? id);       
    }
}