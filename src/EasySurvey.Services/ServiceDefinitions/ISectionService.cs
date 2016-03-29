using System;
using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface ISectionService:IProcessOperations<Section>
    {
        //Section GetById(int id);

        List<Section> GetBySectionGroupId(int id);        
        
    }
}