using System;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class SurveyStateServiceMock : ISurveyStateService
    {
        public SurveyState GetById(int id)
        {
            return new SurveyState {Id = id, Name = RandomEnumValue<States>()};
        }

        private string RandomEnumValue<T>()
        {
            var v = Enum.GetValues(typeof(T));
            return (string) v.GetValue( MockRandom.Random().Next(v.Length));
        }

        private enum States
        {
            Open,
            Closed,
            InProgress
        }

        public bool Save(SurveyState element)
        {
            throw new NotImplementedException();
        }

        public bool Delete(SurveyState element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(int value)
        {
            throw new NotImplementedException();
        }
    }
}