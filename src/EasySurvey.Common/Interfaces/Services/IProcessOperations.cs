using System;

namespace EasySurvey.Common.Interfaces.Services
{
    public interface IProcessOperations<T> where T : class
    {
        bool Save(T element);
        bool Delete(T element);
        bool DeleteById(int value);

        T GetById(int id);
    }
}