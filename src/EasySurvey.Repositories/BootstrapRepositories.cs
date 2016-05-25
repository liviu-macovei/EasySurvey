using EasySurvey.Common.Interfaces.Repositories;
using EasySurvey.Repositories.Sql;
using Microsoft.Data.Entity;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace EasySurvey.Repositories
{
    public class BootstrapRepositories
    {
        public void ConfigureServices(IConfigurationRoot configuration, IServiceCollection services)
        {
            services.AddEntityFramework()
                .AddSqlServer()
                .AddDbContext<EasySurveyStore_DevContext>(options =>
                    options.UseSqlServer(configuration["Data:RepositoryConnection:ConnectionString"]));

            services.AddTransient<ICustomerRepository, CustomerRepository>();
            services.AddTransient<ISurveyRepository, SurveyRepository>();
            services.AddTransient<ISurveyTemplateRepository, SurveyTemplateRepository>();
            services.AddTransient<IAnswerGroupRepository, AnswerGroupRepository>();
            services.AddTransient<IAnswerSectionRepository, AnswerSectionRepository>();
            services.AddTransient<IOptionGroupRepository, OptionGroupRepository>();
            services.AddTransient<IOptionRepository, OptionRepository>();
            services.AddTransient<IQuestionTypeRepository, QuestionTypeRepository>();
            services.AddTransient<ICommentRepository, CommentRepository>();
        }
    }
}