using System;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class NextQuestionServiceMock : INextQuestionService
    {
        public int GetIdOfNextQuestionAfterId(int id)
        {
            return id + 1;
        }

        public NextQuestion GetNextQuestionAfterId(int id)
        {
            return new NextQuestion
            {
                Id =MockRandom.Random().Next(100),
                NextQuestionId = id + 1
            };
        }

        public bool Save(NextQuestion element)
        {
            throw new NotImplementedException();
        }

        public bool Delete(NextQuestion element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(int value)
        {
            throw new NotImplementedException();
        }

        public NextQuestion GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}