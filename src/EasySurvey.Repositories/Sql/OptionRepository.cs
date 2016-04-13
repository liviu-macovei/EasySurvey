using EasySurvey.Common.Interfaces.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using EasySurvey.Common.Models;
using Microsoft.Data.Entity;

namespace EasySurvey.Repositories.Sql
{
    public class OptionRepository : IOptionRepository
    {
        private readonly EasySurveyStore_DevContext _context;

        public OptionRepository(EasySurveyStore_DevContext context)
        {
            _context = context;
        }

        public Option Add(Option option)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.Option.Add(option);
                    _context.SaveChanges();
                    dbContextTransaction.Commit();                    
                }
                catch (Exception ex)
                {
                    dbContextTransaction.Rollback();
                }
                return option;
            }
        }

        public bool Delete(Option option)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.Option.Remove(option);
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
            var query = from option in _context.Option
                        where option.Id == id
                        select option;

            if (query.FirstOrDefault() != null)
            {
                using (var dbContextTransaction = _context.Database.BeginTransaction())
                {
                    try
                    {
                        _context.Option.Remove(query.First());
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

        public Option Find(int id)
        {
            var query = from option in _context.Option
                 .Include(x => x.OptionGroup)                 
                        where option.Id == id
                        select option;
            return query.FirstOrDefault();
        }

        public ICollection<Option> FindAllByOptionGroupId(int optionGroupId)
        {
            var query = from option in _context.Option
                .Include(x => x.OptionGroup)               
                        where option.OptionGroupId == optionGroupId
                        select option;
            return query.ToList();
        }

        public ICollection<Option> GetAll()
        {
            var query = from option in _context.Option
                .Include(x => x.OptionGroup)
                        select option;
            return query.ToList();
        }

        public Option Update(Option option)
        {
            using (var dbContextTransaction = _context.Database.BeginTransaction())
            {
                try
                {
                    _context.Option.Update(option);
                    _context.SaveChanges();
                }
                catch (Exception)
                {
                    dbContextTransaction.Rollback();
                    throw;
                }
                return option;
            }
        }
    }
}
