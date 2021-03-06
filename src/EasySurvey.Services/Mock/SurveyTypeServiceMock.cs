﻿using System;
using System.Collections;
using System.Collections.Generic;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class SurveyTypeServiceMock : ISurveyTypeService
    {
        public SurveyType GetById(int id)
        {
            return new SurveyType
            {
                Id = id,
                Name = "Mock Survey Type"
            };
        }

        public IEnumerable GetAll()
        {
          return new List<SurveyType>()
          {
              GetById(MockRandom.Random().Next(100)),
              GetById(MockRandom.Random().Next(100)),
              GetById(MockRandom.Random().Next(100))
          };
        }

        public bool Save(SurveyType element)
        {
            throw new NotImplementedException();
        }

        public bool Delete(SurveyType element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(int value)
        {
            throw new NotImplementedException();
        }
    }
}