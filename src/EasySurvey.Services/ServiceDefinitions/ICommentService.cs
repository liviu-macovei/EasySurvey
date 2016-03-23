using System;
using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface ICommentService:IProcessOperations<Comment>
    {
        ICollection<Comment> GetByAnalysisId(int id);
        Comment GetById(int id);
        ICollection<Comment> GetByUserId(string id);
    }
}