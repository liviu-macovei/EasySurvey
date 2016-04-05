using System;
using System.Collections.Generic;
using System.Linq;
using EasySurvey.Common.Interfaces.Repositories;
using EasySurvey.Common.Models;
using Microsoft.Data.Entity;

namespace EasySurvey.Repositories.Sql
{
    public class SurveyRepository : ISurveyRepository
    {
        private readonly EasySurveyStore_DevContext _context;

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
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    var answerGroupRepository = new AnswerGroupRepository(_context);
                    ICollection<AnswerGroup> newAnswerGroups = new List<AnswerGroup>();
                    foreach (var answerGroup in survey.AnswerGroup)
                    {
                        newAnswerGroups.Add(answerGroupRepository.AddFromSurvey(answerGroup,
                            dbContextTransaction.Instance));
                    }

                    _context.Survey.Add(survey);
                    _context.SaveChanges();
                    dbContextTransaction.Commit();
                    //todo get the id
                    //possibly add newAnswerGroups to the survey
                }
                catch (Exception)
                {
                    dbContextTransaction.Rollback();
                }
                return survey;
            }
        }

        public Survey Update(Survey survey)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.Survey.Update(survey);
                    _context.SaveChanges();
                }
                catch (Exception)
                {
                    dbContextTransaction.Rollback();
                    throw;
                }
                return survey;
            }
        }

        public bool Delete(Survey survey)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.Survey.Remove(survey);
                    _context.SaveChanges();
                }
                catch
                    (Exception)
                {
                    dbContextTransaction.Rollback();
                    throw;
                }
                return true;
            }
        }

        public bool DeleteById(int surveyId)
        {
            var query = from survey in _context.Survey
                where survey.Id == surveyId
                select survey;

            if (query.FirstOrDefault() != null)
            {
                using (var dbContextTransaction = _context.Database.BeginTransaction())
                {
                    try
                    {
                        _context.Survey.Remove(query.First());
                        _context.SaveChanges();
                    }
                    catch
                        (Exception)
                    {
                        dbContextTransaction.Rollback();
                        throw;
                    }
                    return true;
                }
            }
            return false;
        }
    }
}