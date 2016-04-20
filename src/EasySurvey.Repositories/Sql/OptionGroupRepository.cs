using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using EasySurvey.Common.Interfaces.Repositories;
using EasySurvey.Common.Models;
using Microsoft.Data.Entity;

namespace EasySurvey.Repositories.Sql
{
    public class OptionGroupRepository : IOptionGroupRepository
    {
        private readonly EasySurveyStore_DevContext _context;

        public OptionGroupRepository(EasySurveyStore_DevContext context)
        {
            _context = context;
        }

        public OptionGroup Add(OptionGroup optionGroup)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.OptionGroup.Add(optionGroup);
                    _context.SaveChanges();
                    dbContextTransaction.Commit();                    
                }
                catch (Exception ex)
                {
                    dbContextTransaction.Rollback();
                }
                return optionGroup;
            }
        }

        public bool Delete(OptionGroup optionGroup)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.OptionGroup.Remove(optionGroup);
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
            var query = from optionGroup in _context.OptionGroup
                        where optionGroup.Id == id
                        select optionGroup;

            if (query.FirstOrDefault() != null)
            {
                using (var dbContextTransaction = _context.Database.BeginTransaction())
                {
                    try
                    {
                        _context.OptionGroup.Remove(query.First());
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

        public OptionGroup Find(int id)
        {
            var query = from optionGroup in _context.OptionGroup
                 .Include(x => x.Option)                 
                        where optionGroup.Id == id
                        select optionGroup;
            return query.FirstOrDefault();
        }

        public ICollection<OptionGroup> GetAll()
        {
            var query = from optionGroup in _context.OptionGroup
                .Include(x => x.Option)
                        select optionGroup;
            return query.ToList();
        }

        public OptionGroup Update(OptionGroup optionGroup)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.OptionGroup.Update(optionGroup);
                    _context.SaveChanges();
                    dbContextTransaction.Commit();
                }
                catch (Exception)
                {
                    dbContextTransaction.Rollback();
                    throw;
                }
                return optionGroup;
            }
        }
    }
}
