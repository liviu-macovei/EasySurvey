using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EasySurvey.Services.Mock;
using EasySurvey.Services.ServiceDefinitions;
using Microsoft.Extensions.Configuration;

namespace EasySurvey.Services
{
    public class BootstrapServices
    {
        public void ConfigureServices(IConfigurationRoot configuration, IServiceCollection services)
        {
            Repositories.BootstrapRepositories bootstrapService = new Repositories.BootstrapRepositories();
            bootstrapService.ConfigureServices(configuration, services);

            //Register external services.//TODO SEE IF THIS CAN BE DONE IN SERVICES PROJECT
            
            services.AddTransient<ISurveyTypeService, SurveyTypeServiceMock>();
            services.AddTransient<ISurveyStateService, SurveyStateServiceMock>();
            services.AddTransient<ISectionService, SectionServiceMock>();
            services.AddTransient<ISectionGroupService, SectionGroupServiceMock>();
            services.AddTransient<IQuestionService, QuestionServiceMock>();
            services.AddTransient<IQuestionTypeService, QuestionTypeServiceMock>();
            services.AddTransient<IOwnerService, OwnerServiceMock>();
            services.AddTransient<IOptionService, OptionServiceMock>();
            services.AddTransient<IOptionGroupService, OptionGroupServiceMock>();
            services.AddTransient<INextQuestionService, NextQuestionServiceMock>();
            services.AddTransient<ICommentService, CommentServiceMock>();
            services.AddTransient<IAnswerService, AnswerServiceMock>();
            services.AddTransient<IAnswerGroupService, AnswerGroupServiceMock>();

            services.AddTransient<ICustomerService, Impl.CustomerService>();
            services.AddTransient<ISurveyTemplateService, Impl.SurveyTemplateService>();
            services.AddTransient<ISurveyService, Impl.SurveyService>();
        }
    }
}
