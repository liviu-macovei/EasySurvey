using System.Threading.Tasks;

namespace EasySurvey.Web.Services
{
    public interface IEmailSender
    {
        Task SendEmailAsync(string email, string subject, string message);
    }
}
