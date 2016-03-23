using System;
using EasySurvey.Services.Providers;
using Microsoft.Extensions.DependencyInjection;

namespace EasySurvey.Services
{
    /// <summary>
    /// NOT USED YET
    /// </summary>
    public class ServiceProviderFactory : IServiceProviderFactory
    {
        public IServiceProvider GetServiceProvider()
        {
            return new MockServiceProvider();
        }

        /*public void RegisterTypes(IServiceCollection services)
        {
            services.AddTransient()
        }*/
    }
}