using System;
using System.Collections;
using System.Collections.Generic;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class QuestionTypeServiceMock : IQuestionTypeService
    {
        public QuestionType GetById(int id)
        {
            switch (id)
            {
                case 1:
                    return new QuestionType
                    {
                        Id = id,
                        Name = "MultiSelect" + id
                    };                    
                case 2:
                    return new QuestionType
                    {
                        Id = id,
                        Name = "SingleSelection" + id
                    };                                    
                default:
                    return new QuestionType
                    {
                        Id = id,
                        Name = "Yes/No" + id
                    };                    
            }
        }

        public IEnumerable GetAll()
        {
           return new List<QuestionType>()
           {
               GetById(1),
               GetById(2),
               GetById(3)
           };
        }

        public bool Save(QuestionType element)
        {
            throw new NotImplementedException();
        }

        public bool Delete(QuestionType element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(Guid value)
        {
            throw new NotImplementedException();
        }
    }
}