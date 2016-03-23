using System;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface IOwnerService:IProcessOperations<Owner>
    {
        Owner GetById(int id);
        Owner GetOwnerForSurveyId(int id);
    }
}