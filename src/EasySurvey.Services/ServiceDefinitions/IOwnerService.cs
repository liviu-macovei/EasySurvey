﻿using System;
using EasySurvey.Common.Interfaces.Services;
using EasySurvey.Common.Models;

namespace EasySurvey.Services.ServiceDefinitions
{
    public interface IOwnerService:IProcessOperations<Owner>
    {
        Owner GetOwnerForSurveyId(int id);
    }
}