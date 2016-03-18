using System.Threading.Tasks;

namespace EasySurvey.Web.Services
{
    public interface ISmsSender
    {
        Task SendSmsAsync(string number, string message);
    }
}
