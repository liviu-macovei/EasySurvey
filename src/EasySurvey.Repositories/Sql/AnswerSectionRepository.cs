using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using EasySurvey.Common.Interfaces.Repositories;
using EasySurvey.Common.Models;
using Microsoft.Data.Entity;

namespace EasySurvey.Repositories.Sql
{
    public class AnswerSectionRepository : IAnswerSectionRepository
    {
        private readonly EasySurveyStore_DevContext _context;
        public AnswerSectionRepository(EasySurveyStore_DevContext context)
        {
            _context = context;
        }
        public ICollection<AnswerSection> GetAll()
        {
            var query = from answerSection in _context.AnswerSection
                select answerSection;
            return query.ToList();
        }
        public AnswerSection Find(int id)
        {
            var query = from answerSection in _context.AnswerSection
                .Include(x => x.Section)
                .Include(s => s.Answer).ThenInclude(q => q.Question).ThenInclude(q => q.QuestionType)
                .Include(s => s.Answer).ThenInclude(q => q.Question).ThenInclude(q => q.OptionGroup).ThenInclude(q => q.Option)
                .Include(s => s.Section).ThenInclude(q => q.Question).ThenInclude(q => q.OptionGroup).ThenInclude(q => q.Option)
                        where answerSection.Id == id
                select answerSection;
            return query.FirstOrDefault();
        }
        public ICollection<AnswerSection> FindAllByAnswerGroupId(int answerGroupId)
        {
            var query = from answerSection in _context.AnswerSection
                .Include(s => s.Section).ThenInclude(q => q.Question).ThenInclude(q => q.OptionGroup).ThenInclude(q => q.Option)
                        where answerSection.AnswerGroupId == answerGroupId
                        select answerSection;
            return query.ToList();
        }
        public AnswerSection Add(AnswerSection answerSection)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.AnswerSection.Add(answerSection);
                    _context.SaveChanges();
                    dbContextTransaction.Commit();                 
                }
                catch (Exception ex)
                {
                    dbContextTransaction.Rollback();
                    throw;
                }
                return answerSection;
            }
        }
        public AnswerSection Update(AnswerSection answerSection)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.AnswerSection.Update(answerSection);
                    _context.SaveChanges();
                    dbContextTransaction.Commit();
                }
                catch (Exception)
                {
                    dbContextTransaction.Rollback();
                    throw;
                }
                return answerSection;
            }
        }
        public bool Delete(AnswerSection answerSection)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.AnswerSection.Remove(answerSection);
                    _context.SaveChanges();
                    dbContextTransaction.Commit();
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
            var query = from answerSection in _context.AnswerSection
                where answerSection.Id == id
                select answerSection;

            if (query.FirstOrDefault() != null)
            {
                using (var dbContextTransaction = _context.Database.BeginTransaction())
                {
                    try
                    {
                        _context.AnswerSection.Remove(query.First());
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
        public bool DeleteByAnswerGroupId(int answerGroupid)
        {
            var query = from answerSection in _context.AnswerSection
                        where answerSection.AnswerGroupId == answerGroupid
                        select answerSection;

            if (query.Count() > 0)
            {
                foreach (var answerSection in query)
                    if (answerSection != null)
                    {
                        _context.AnswerSection.Remove(answerSection);
                    }
                _context.SaveChanges();
                return true;
            }
            return false;
        }
    }
}