using EasySurvey.Services.Mock;
using EasySurvey.Services.ServiceDefinitions;
using EasySurvey.Web.Models;
using EasySurvey.Web.Services;
using Microsoft.AspNet.Builder;
using Microsoft.AspNet.Hosting;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Data.Entity;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;

namespace EasySurvey.Web
{
    public class Startup
    {
        public Startup(IHostingEnvironment env)
        {
            // Set up configuration sources.
            var builder = new ConfigurationBuilder()
                .AddJsonFile("appsettings.json")
                .AddJsonFile($"appsettings.{env.EnvironmentName}.json", true);

            if (env.IsDevelopment())
            {
                // For more details on using the user secret store see http://go.microsoft.com/fwlink/?LinkID=532709
                builder.AddUserSecrets();
            }

            builder.AddEnvironmentVariables();
            Configuration = builder.Build();
        }

        public IConfigurationRoot Configuration { get; set; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            // Add framework services.
            services.AddEntityFramework()
                .AddSqlServer()
                .AddDbContext<ApplicationDbContext>(options =>
                    options.UseSqlServer(Configuration["Data:DefaultConnection:ConnectionString"]));

            services.AddIdentity<ApplicationUser, IdentityRole>()
                .AddEntityFrameworkStores<ApplicationDbContext>()
                .AddDefaultTokenProviders();

            services.AddMvc();

            // Add application services.
            services.AddTransient<IEmailSender, AuthMessageSender>();
            services.AddTransient<ISmsSender, AuthMessageSender>();

            //Register external services.//TODO SEE IF THIS CAN BE DONE IN SERVICES PROJECT
            services.AddTransient<ISurveyService, SurveyServiceMock>();
            services.AddTransient<ISurveyTypeService, SurveyTypeServiceMock>();
            services.AddTransient<ISurveyStateService, SurveyStateServiceMock>();
            services.AddTransient<ISurveyTemplateService, SurveyTemplateServiceMock>();
            services.AddTransient<ISectionService, SectionServiceMock>();
            services.AddTransient<ISectionGroupService, SectionGroupServiceMock>();
            services.AddTransient<IQuestionService, QuestionServiceMock>();
            services.AddTransient<IQuestionTypeService, QuestionTypeServiceMock>();
            services.AddTransient<IOwnerService, OwnerServiceMock>();
            services.AddTransient<IOptionService, OptionServiceMock>();
            services.AddTransient<IOptionGroupService, OptionGroupServiceMock>();
            services.AddTransient<INextQuestionService, NextQuestionServiceMock>();
            services.AddTransient<ICustomerService, CustomerServiceMock>();
            services.AddTransient<ICommentService, CommentServiceMock>();
            services.AddTransient<IAnswerService, AnswerServiceMock>();
            services.AddTransient<IAnswerGroupService, AnswerGroupServiceMock>();         
        }


        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env, ILoggerFactory loggerFactory)
        {
            loggerFactory.AddConsole(Configuration.GetSection("Logging"));
            loggerFactory.AddDebug();

            if (env.IsDevelopment())
            {
                app.UseBrowserLink();
                app.UseDeveloperExceptionPage();
                app.UseDatabaseErrorPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");

                // For more details on creating database during deployment see http://go.microsoft.com/fwlink/?LinkID=615859
                try
                {
                    using (var serviceScope = app.ApplicationServices.GetRequiredService<IServiceScopeFactory>()
                        .CreateScope())
                    {
                        serviceScope.ServiceProvider.GetService<ApplicationDbContext>()
                            .Database.Migrate();
                    }
                }
                catch
                {
                }
            }

            app.UseIISPlatformHandler(options => options.AuthenticationDescriptions.Clear());

            app.UseStaticFiles();

            app.UseIdentity();

            // To configure external authentication please see http://go.microsoft.com/fwlink/?LinkID=532715

            app.UseMvc(routes =>
            {
                routes.MapRoute(
                    "default",
                    "{controller=Home}/{action=Index}/{id?}");
            });
        }

        // Entry point for the application.
        public static void Main(string[] args) => WebApplication.Run<Startup>(args);
    }
}