using System;
using System.Collections.Generic;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Services.Mock
{
    public class CommentServiceMock : ICommentService
    {
        public Comment GetById(Guid id)
        {
            return new Comment
            {
                Id = id,
                Description = "Something Something by id",
                AnalysisId =Guid.NewGuid(),
                UserId = new Guid?()
            };
        }

        public ICollection<Comment> GetByAnalysisId(Guid id)
        {
            return new List<Comment>
            {
                new Comment
                {
                    Id =Guid.NewGuid(),
                    Description = "Something Something by survey",
                    AnalysisId = id,
                    UserId = new Guid?()
                }
            };
        }

        ICollection<Comment> ICommentService.GetByUserId(Guid id)
        {
            return new List<Comment>
            {
                new Comment
                {
                    Id =Guid.NewGuid(),
                    Description = "Something Something by user",
                    AnalysisId = new Guid?(),
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

        public bool DeleteById(Guid value)
        {
            throw new NotImplementedException();
        }

        public Comment GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}