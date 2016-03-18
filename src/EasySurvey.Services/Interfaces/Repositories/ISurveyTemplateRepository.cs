using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EasySurvey.Services.Interfaces.Repositories
{
    interface ISurveyTemplateRepository
    {
        EasySurvey.Services.Models.SurveyTemplate Find(string key);
    }
}
