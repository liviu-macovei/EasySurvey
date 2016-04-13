using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using EasySurvey.Common.Interfaces.Repositories;
using EasySurvey.Common.Models;
using Microsoft.Data.Entity;

namespace EasySurvey.Repositories.Sql
{
    public class AnswerGroupRepository : IAnswerGroupRepository
    {
        private readonly EasySurveyStore_DevContext _context;

        public AnswerGroupRepository(EasySurveyStore_DevContext context)
        {
            _context = context;
        }

        public ICollection<AnswerGroup> GetAll()
        {
            var query = from answerGroup in _context.AnswerGroup
                .Include(x => x.Answer)
                select answerGroup;
            return query.ToList();
        }

        public AnswerGroup Find(int id)
        {
            var query = from answerGroup in _context.AnswerGroup
                .Include(x => x.Answer)
                //.Include(x => x.SectionGroup).ThenInclude(s => s.Section).ThenInclude(q => q.Question).ThenInclude(q => q.QuestionType)
                .Include(x => x.SectionGroup).ThenInclude(s => s.Section).ThenInclude(q => q.Question).ThenInclude(q => q.OptionGroup).ThenInclude(q => q.Option)
                        where answerGroup.Id == id
                select answerGroup;
            return query.FirstOrDefault();
        }

        public ICollection<AnswerGroup> FindAllBySurveyId(int surveyId)
        {
            var query = from answerGroup in _context.AnswerGroup
                .Include(x => x.Answer)
                .Include(x => x.SectionGroup).ThenInclude(s => s.Section).ThenInclude(q => q.Question).ThenInclude(q => q.OptionGroup).ThenInclude(q => q.Option)
                        where answerGroup.SurveyId == surveyId
                select answerGroup;
            return query.ToList();
        }

        public AnswerGroup FindBySectionGroupId(int sectionGroupId)
        {
            var query = from answerGroup in _context.AnswerGroup
                .Include(x => x.Answer)
                where answerGroup.SectionGroupId == sectionGroupId
                select answerGroup;
            return query.FirstOrDefault();
        }


        public AnswerGroup Add(AnswerGroup answerGroup)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.AnswerGroup.Add(answerGroup);
                    _context.SaveChanges();
                    dbContextTransaction.Commit();                 
                }
                catch (Exception ex)
                {
                    dbContextTransaction.Rollback();
                }
                return answerGroup;
            }
        }


        public AnswerGroup AddFromSurvey(AnswerGroup answerGroup)
        {            
          _context.AnswerGroup.Add(answerGroup);
            _context.SaveChanges();            
            return answerGroup;
        }

        public AnswerGroup Update(AnswerGroup answerGroup)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.AnswerGroup.Update(answerGroup);
                    _context.SaveChanges();
                }
                catch (Exception)
                {
                    dbContextTransaction.Rollback();
                    throw;
                }
                return answerGroup;
            }
        }

        public bool Delete(AnswerGroup answerGroup)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.AnswerGroup.Remove(answerGroup);
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

        public bool DeleteById(int id)
        {
            var query = from answerGroup in _context.AnswerGroup
                where answerGroup.Id == id
                select answerGroup;

            if (query.FirstOrDefault() != null)
            {
                using (var dbContextTransaction = _context.Database.BeginTransaction())
                {
                    try
                    {
                        _context.AnswerGroup.Remove(query.First());
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