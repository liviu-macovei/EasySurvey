using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EasySurvey.Common.Models;

namespace EasySurvey.Repositories.Sql
{
    public class CommentRepository : Common.Interfaces.Repositories.ICommentRepository
    {
        private EasySurveyStore_DevContext _context;
        public CommentRepository(EasySurveyStore_DevContext context)
        {
            _context = context;
        }

        public Comment Add(Comment comment)
        {
            _context.Comment.Add(comment);
            _context.SaveChanges();
            return comment;
        }

        public bool Delete(Comment comment)
        {
            _context.Comment.Remove(comment);
            _context.SaveChanges();
            return true;
        }

        public bool DeleteById(int commentId)
        {
            var query = from comment in _context.Comment
                        where comment.Id == commentId
                        select comment;

            if (query.FirstOrDefault() != null)
            {
                _context.Comment.Remove(query.First());
                _context.SaveChanges();
                return true;
            }
            return false;
        }

        public Comment Find(int commentId)
        {
            var query = from comment in _context.Comment
                        where comment.Id == commentId
                        select comment;
            return query.FirstOrDefault();
        }

        public ICollection<Comment> GetAll()
        {
            var query = from comment in _context.Comment
                        select comment;
            return query.ToList();
        }

        public ICollection<Comment> GetBySurveyId(int surveyId)
        {
            var query = from comment in _context.Comment
                        where comment.SurveyId == surveyId
                        select comment;
            return query.ToList();
        }

        public ICollection<Comment> GetByUserId(string userId)
        {
            var query = from comment in _context.Comment
                        where comment.UserId == userId
                        select comment;
            return query.ToList();
        }

        public Comment Update(Comment comment)
        {
            _context.Comment.Update(comment);
            _context.SaveChanges();
            return comment;
        }
    }
}
