using System;
using System.Collections.Generic;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.Implementation
{
    public class CommentService : ServiceDefinitions.ICommentService 
    {
        EasySurvey.Common.Interfaces.Repositories.ICommentRepository _commentRepo;
        public CommentService(EasySurvey.Common.Interfaces.Repositories.ICommentRepository commentRepo)
        {
            _commentRepo = commentRepo;
        }

        public ICollection<Comment> GetAll()
        {
            return _commentRepo.GetAll();
        }

        public bool Save(Comment element)
        {
            if(element.Id == 0)
                element = _commentRepo.Add(element);
            else
                element = _commentRepo.Update(element);

            return true;
        }

        public bool Delete(Comment element)
        {
            return _commentRepo.Delete(element);
        }

        public bool DeleteById(int value)
        {
            return _commentRepo.DeleteById(value);
        }

        public Comment GetById(int id)
        {
            return _commentRepo.Find(id);
        }

        public ICollection<Comment> GetBySurveyId(int id)
        {
            return _commentRepo.GetBySurveyId(id);
        }

        public ICollection<Comment> GetByUserId(string id)
        {
            return _commentRepo.GetByUserId(id);
        }
    }
}
