using Microsoft.Data.Entity;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EasySurvey.Repositories
{
    public class BootstrapRepositories
    {
        public void ConfigureServices(IConfigurationRoot configuration, IServiceCollection services)
        {
            services.AddEntityFramework()
                .AddSqlServer()
                .AddDbContext<Sql.EasySurveyStore_DevContext>(options =>
                    options.UseSqlServer(configuration["Data:RepositoryConnection:ConnectionString"]));

            services.AddTransient<Common.Interfaces.Repositories.ICustomerRepository, Sql.CustomerRepository>();
            services.AddTransient<Common.Interfaces.Repositories.ISurveyTemplateRepository, Sql.SurveyTemplateRepository>();
        }
    }
}
