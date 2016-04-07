using System;
using System.Collections.Generic;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class CommentServiceMock : ICommentService
    {
        public Comment GetById(int id)
        {
            return new Comment
            {
                Id = id,
                Description = "Something Something by id",
                SurveyId =MockRandom.Random().Next(100),
                UserId = new int().ToString()
            };
        }

        public ICollection<Comment> GetBySurveyId(int id)
        {
            return new List<Comment>
            {
                new Comment
                {
                    Id =MockRandom.Random().Next(100),
                    Description = "Something Something by survey",
                    SurveyId = id,
                    UserId = new int().ToString()
                }
            };
        }

        ICollection<Comment> ICommentService.GetByUserId(string id)
        {
            return new List<Comment>
            {
                new Comment
                {
                    Id =MockRandom.Random().Next(100),
                    Description = "Something Something by user",
                    SurveyId = new int(),
                    UserId = id
                }
            };
        }

        public bool Save(Comment element)
        {
            throw new NotImplementedException();
        }

        public bool Delete(Comment element)
        {
            throw new NotImplementedException();
        }

        public bool DeleteById(int value)
        {
            throw new NotImplementedException();
        }

        public ICollection<Comment> GetByAnalysisId(int id)
        {
            throw new NotImplementedException();
        }
    }
}