using EasySurvey.Repositories;
using EasySurvey.Services.Implementation;
using EasySurvey.Services.Mock;
using EasySurvey.Services.ServiceDefinitions;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace EasySurvey.Services
{
    public class BootstrapServices
    {
        public void ConfigureServices(IConfigurationRoot configuration, IServiceCollection services)
        {
            var bootstrapService = new BootstrapRepositories();
            bootstrapService.ConfigureServices(configuration, services);           

            //Mock
            services.AddTransient<ISurveyTypeService, SurveyTypeServiceMock>();
            services.AddTransient<ISurveyStateService, SurveyStateServiceMock>();
            services.AddTransient<ISectionService, SectionServiceMock>();
            services.AddTransient<ISectionGroupService, SectionGroupServiceMock>();
            services.AddTransient<IQuestionService, QuestionServiceMock>();           
            services.AddTransient<IOwnerService, OwnerServiceMock>();
            services.AddTransient<INextQuestionService, NextQuestionServiceMock>();
            services.AddTransient<IAnswerService, AnswerServiceMock>();

            //Real
            services.AddTransient<IAnswerGroupService, AnswerGroupService>();
            services.AddTransient<ICustomerService, CustomerService>();
            services.AddTransient<ISurveyTemplateService, SurveyTemplateService>();
            services.AddTransient<ISurveyService, SurveyService>();
            services.AddTransient<IOptionService, OptionService>();
            services.AddTransient<IOptionGroupService, OptionGroupService>();
            services.AddTransient<IQuestionTypeService, QuestionTypeService>();
            services.AddTransient<ICommentService, CommentService>();
        }
    }
}