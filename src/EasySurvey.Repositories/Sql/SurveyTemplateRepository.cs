using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EasySurvey.Common.Models;
using Microsoft.Data.Entity;

namespace EasySurvey.Repositories.Sql
{
    public class SurveyTemplateRepository : Common.Interfaces.Repositories.ISurveyTemplateRepository
    {
        private EasySurveyStore_DevContext _context;
        public SurveyTemplateRepository(EasySurveyStore_DevContext context)
        {
            _context = context;
        }

        public SurveyTemplate GetById(int surveyTemplateId)
        {
            var query = from surveyTemplate in _context.SurveyTemplate
                        .Include(x => x.SectionGroup).ThenInclude(s => s.Section).ThenInclude(q => q.Question).ThenInclude(q => q.QuestionType)
                        .Include(x => x.SectionGroup).ThenInclude(s => s.Section).ThenInclude(q => q.Question).ThenInclude(og => og.OptionGroup)
                        where surveyTemplate.Id == surveyTemplateId
                        select surveyTemplate;
            return query.FirstOrDefault();
        }

        public ICollection<SurveyTemplate> GetAll()
        {
            var query = from surveyTemplate in _context.SurveyTemplate
                        select surveyTemplate;
            return query.ToList();
        }
    }
}
