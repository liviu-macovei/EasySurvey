using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EasySurvey.Repositories.Sql
{
    public class SqlBaseRepository <T> 
    {
        protected object GetById(Guid element)
        {
            return null;
        }

        protected List<T> GetAll()
        {
            return null;
        }

        protected bool Save(T element)
        {
            return true;
        }

        protected bool Delete(T element)
        {
            return true;
        }

        protected bool DeleteById(Guid value)
        {
            return true;
        }
    }
}
