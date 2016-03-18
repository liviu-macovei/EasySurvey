using System;
using System.Collections.Generic;
using EasySurvey.Common.Models;

namespace EasySurvey.Services
{
    public interface ISectionService
    {
        Section GetById(Guid id);

        List<Section> GetBySectionGroupId(Guid id);

    }
}