using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EasySurvey.Common.Interfaces.Repositories;
using EasySurvey.Common.Models;


namespace EasySurvey.Repositories.Sql
{
    public class SurveyRepository : SqlBaseRepository<Common.Models.Survey>, ISurveyRepository
    {
        public new bool Save(Survey survey)
        {
            return base.Save(survey);
        }

        public new bool Delete(Survey survey)
        {
            return base.Delete(survey);
        }

        public bool DeleteById(Guid surveyId)
        {
            return base.DeleteById(surveyId);
        }
    }
}
