using System.Collections.Generic;

namespace EasySurvey.Common.Interfaces.Services
{
    public interface IListOperations<T> where T : class
    {
        ICollection<T> GetAll();
    }
}