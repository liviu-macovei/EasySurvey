using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Data.Entity;
using EasySurvey.Common.Models;
using EasySurvey.Web.ViewModels.Customer;
using EasySurvey.Web.ViewModels.Survey;

namespace EasySurvey.Web.Models
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            // Customize the ASP.NET Identity model and override the defaults if needed.
            // For example, you can rename the ASP.NET Identity table names and more.
            // Add your customizations after calling base.OnModelCreating(builder);
        }
        public DbSet<Section> Section { get; set; }
        public DbSet<SectionGroup> SectionGroup { get; set; }
        public DbSet<Customer> Customer { get; set; }
        public DbSet<Question> Question { get; set; }
        public DbSet<Survey> Survey { get; set; }
        public DbSet<SurveyTemplate> SurveyTemplate { get; set; }
        public DbSet<CreateCustomerViewModel> CreateCustomerViewModel { get; set; }
        public DbSet<CreateSurveyViewModel> CreateSurveyViewModel { get; set; }
        public DbSet<ListCustomerViewModel> ListCustomerViewModel { get; set; }
    }
}
