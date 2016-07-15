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
        private readonly IAnswerSectionRepository _answerSectionRepository;
        public AnswerGroupRepository(EasySurveyStore_DevContext context, IAnswerSectionRepository answerSectionRepository)
        {
            _context = context;
            _answerSectionRepository = answerSectionRepository;
        }
        public ICollection<AnswerGroup> GetAll()
        {
            var query = from answerGroup in _context.AnswerGroup
                select answerGroup;
            return query.ToList();
        }
        public AnswerGroup Find(int id)
        {
            var query = from answerGroup in _context.AnswerGroup
                .Include(x => x.Survey)
                .Include(x => x.Address)
                .Include(x => x.AnswerSection).ThenInclude(s => s.Section)
                .Include(x => x.AnswerSection).ThenInclude(s => s.Answer).ThenInclude(q => q.Question).ThenInclude(q => q.QuestionType)
                .Include(x => x.AnswerSection).ThenInclude(s => s.Answer).ThenInclude(q => q.Question).ThenInclude(q => q.NextQuestion)
                .Include(x => x.AnswerSection).ThenInclude(s => s.Answer).ThenInclude(q => q.Question).ThenInclude(q => q.OptionGroup).ThenInclude(q => q.Option)
                .Include(x => x.SectionGroup).ThenInclude(s => s.Section).ThenInclude(q => q.Question).ThenInclude(q => q.OptionGroup).ThenInclude(q => q.Option)
                            where answerGroup.Id == id
                select answerGroup;
            return query.FirstOrDefault();
        }
        public ICollection<AnswerGroup> FindAllBySurveyId(int surveyId)
        {
            var query = from answerGroup in _context.AnswerGroup
                .Include(x => x.SectionGroup).ThenInclude(s => s.Section).ThenInclude(q => q.Question).ThenInclude(q => q.OptionGroup).ThenInclude(q => q.Option)
                        where answerGroup.SurveyId == surveyId
                select answerGroup;
            return query.ToList();
        }
        public AnswerGroup FindBySectionGroupId(int sectionGroupId)
        {
            var query = from answerGroup in _context.AnswerGroup
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
                    var address = _context.Address.Add(answerGroup.Address);
                    answerGroup.AddressId = address.Entity.Id;
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
                    dbContextTransaction.Commit();
                }
                catch (Exception)
                {
                    dbContextTransaction.Rollback();
                    throw;
                }
                return answerGroup;
            }
        }
        public AnswerGroup Use(AnswerGroup answerGroup)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    if (!answerGroup.IsUsed)
                    {
                        _context.Address.Remove(answerGroup.Address);
                        answerGroup.AddressId = null;
                        _answerSectionRepository.DeleteByAnswerGroupId(answerGroup.Id);
                    }
                    _context.AnswerGroup.Update(answerGroup);
                    _context.SaveChanges();
                    dbContextTransaction.Commit();
                }
                catch (Exception ex)
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
            return false;
        }

        public ICollection<AnswerGroup> GetBySectionGroupId(int sectionGroupId)
        {
            var query = from answerGroup in _context.AnswerGroup
                        where answerGroup.SectionGroupId == sectionGroupId
                        select answerGroup;
            return query.ToList();
        }

        public ICollection<AnswerGroup> FindAllBySurveyAndSectionGroupId(int surveyId, int sectionGroupId)
        {
            var query = from answerGroup in _context.AnswerGroup
                .Include(x => x.Survey)
                .Include(x => x.Address)
                .Include(x => x.AnswerSection).ThenInclude(s => s.Section)
                .Include(x => x.AnswerSection).ThenInclude(s => s.Answer).ThenInclude(q => q.Question).ThenInclude(q => q.QuestionType)
                .Include(x => x.AnswerSection).ThenInclude(s => s.Answer).ThenInclude(q => q.Question).ThenInclude(q => q.NextQuestion)
                .Include(x => x.AnswerSection).ThenInclude(s => s.Answer).ThenInclude(q => q.Question).ThenInclude(q => q.OptionGroup).ThenInclude(q => q.Option)
                .Include(x => x.SectionGroup).ThenInclude(s => s.Section).ThenInclude(q => q.Question).ThenInclude(q => q.OptionGroup).ThenInclude(q => q.Option)
                        where answerGroup.SurveyId == surveyId && answerGroup.SectionGroupId == sectionGroupId
                        select answerGroup;
            return query.ToList();
        }
    }
}