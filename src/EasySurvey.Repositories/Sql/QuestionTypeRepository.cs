using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EasySurvey.Common.Interfaces.Repositories;
using EasySurvey.Common.Models;
using Microsoft.Data.Entity;

namespace EasySurvey.Repositories.Sql
{
    public class QuestionTypeRepository : IQuestionTypeRepository
    {
        private readonly EasySurveyStore_DevContext _context;

        public QuestionTypeRepository(EasySurveyStore_DevContext context)
        {
            _context = context;
        }

        public QuestionType Add(QuestionType questionType)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.QuestionType.Add(questionType);
                    _context.SaveChanges();
                    dbContextTransaction.Commit();
                }
                catch (Exception ex)
                {
                    dbContextTransaction.Rollback();
                }
                return questionType;
            }
        }

        public bool Delete(QuestionType questionType)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.QuestionType.Remove(questionType);
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
            var query = from questionType in _context.QuestionType
                        where questionType.Id == id
                        select questionType;

            if (query.FirstOrDefault() != null)
            {
                using (var dbContextTransaction = _context.Database.BeginTransaction())
                {
                    try
                    {
                        _context.QuestionType.Remove(query.First());
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

        public QuestionType Find(int id)
        {
            var query = from questionType in _context.QuestionType
                        where questionType.Id == id
                        select questionType;
            return query.FirstOrDefault();
        }

        public ICollection<QuestionType> GetAll()
        {
            var query = from option in _context.QuestionType
                        select option;
            return query.ToList();
        }

        public QuestionType Update(QuestionType questionType)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.QuestionType.Update(questionType);
                    _context.SaveChanges();
                }
                catch (Exception)
                {
                    dbContextTransaction.Rollback();
                    throw;
                }
                return questionType;
            }
        }
    }
}
