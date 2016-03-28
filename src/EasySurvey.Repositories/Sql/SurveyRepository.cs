using System;
using System.Collections.Generic;
using System.Runtime;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Data.Entity;
using EasySurvey.Common.Interfaces.Repositories;
using EasySurvey.Common.Models;


namespace EasySurvey.Repositories.Sql
{
    public class SurveyRepository : ISurveyRepository
    {
        private EasySurveyStore_DevContext _context;
        public SurveyRepository(EasySurveyStore_DevContext context)
        {
            _context = context;
        }

        public ICollection<Survey> GetAll()
        {
            var query = from survey in _context.Survey
                        .Include(x => x.Customer)
                        .Include(x => x.SurveyState)
                        .Include(x => x.SurveyTemplate)
                        select survey;
            return query.ToList();
        }

        public Survey Find(int surveyId)
        {
            var query = from survey in _context.Survey
                        .Include(x => x.Customer)
                        .Include(x => x.SurveyState)
                        .Include(x => x.SurveyTemplate)
                        where survey.Id == surveyId
                        select survey;
            return query.FirstOrDefault();
        }

        public Survey Add(Survey survey)
        {
            _context.Survey.Add(survey);
            _context.SaveChanges();
            return survey;
        }

        public Survey Update(Survey survey)
        {
            _context.Survey.Update(survey);
            _context.SaveChanges();
            return survey;
        }

        public bool Delete(Survey survey)
        {
            _context.Survey.Remove(survey);
            _context.SaveChanges();
            return true;
        }

        public bool DeleteById(int surveyId)
        {
            var query = from survey in _context.Survey
                        where survey.Id == surveyId
                        select survey;

            if (query.FirstOrDefault() != null)
            {
                _context.Survey.Remove(query.First());
                _context.SaveChanges();
                return true;
            }
            return false;
        }
    }
}
