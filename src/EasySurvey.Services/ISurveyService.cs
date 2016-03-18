using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EasySurvey.Services
{
    public interface ISurveyService
    {
        List<EasySurvey.Services.Models.Survey> GetByUserId(string userId);
    }
}
