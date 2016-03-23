using System;
using System.Collections.Generic;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface ICommentService:IProcessOperations<Comment>
    {
        ICollection<Comment> GetByAnalysisId(Guid id);
        Comment GetById(Guid id);
        ICollection<Comment> GetByUserId(Guid id);
    }
}