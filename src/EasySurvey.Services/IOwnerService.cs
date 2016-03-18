using System;
using EasySurvey.Common.Models;

namespace EasySurvey.Services
{
    public interface IOwnerService
    {
        Owner GetById(Guid guid);
        Owner GetOwnerForSurveyId(Guid id);
    }
}