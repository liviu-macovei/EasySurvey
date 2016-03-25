using System;
using System.Collections.Generic;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class QuestionServiceMock : IQuestionService
    {        

        public Question GetById(int id)
        {
            return new Question
            {
                Id = id,
                IsMandatory = MockRandom.Random().NextDouble() > 0.5,
                AnswerLabel = "Answer Me!!",
                DefaultComments = "Should this be updated after the answer?",
                HelpText = "This is the easiest question ever",
                QuestionText = "How much is " +  MockRandom.Random().Next(10) + " + " +  MockRandom.Random().Next(10),
                SectionId = MockRandom.Random().Next(100),
                AnswerValidationExpression = "42 the answer of everything",
                OptionGroupId = new OptionGroupServiceMock().GetById( MockRandom.Random().Next(3)).Id,
                QuestionTypeId = new QuestionTypeServiceMock().GetById( MockRandom.Random().Next(3)).Id
            };
        }

        public Question GetNextQuestion(Question q)
        {
            return GetById(new NextQuestionServiceMock().GetIdOfNextQuestionAfterId(q.Id));
        }

        public Question GetNextQuestion(int id)
        {
            return GetById(new NextQuestionServiceMock().GetIdOfNextQuestionAfterId(id));
        }

        public ICollection<Question> GetAll(int SectionId)
        {
           return new List<Question>()
           {
               GetById( MockRandom.Random().Next(100)),
               GetById( MockRandom.Random().Next(100)),
               GetById( MockRandom.Random().Next(100)),
               GetById( MockRandom.Random().Next(100))
           };
        }

        public bool Save(Question element)
        {
            throw new NotImplementedException();
        }

        public bool Delete(Question element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(int value)
        {
            throw new NotImplementedException();
        }
    }
}