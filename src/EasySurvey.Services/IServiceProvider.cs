using EasySurvey.Services.ServiceDefinitions;
using Microsoft.Extensions.DependencyInjection;

namespace EasySurvey.Services
{
    /// <summary>
    ///     NOT USED YET
    /// </summary>
    public interface IServiceProvider
    {
        //TODO Consider Singleton pattern!
        ISectionGroupService GetSectionGroupService();
        IAnswerGroupService GetAnswerGroupService();
        IAnswerService GetAnswerService();
        ICommentService GetCommentService();
        ICustomerService GetCustomerService();
        INextQuestionService GetNextQuestionService();
        IOptionGroupService GetOptionGroupService();
        IOptionService GetOptionService();
        IOwnerService GetOwnerService();
        IQuestionService GetQuestionService();
        IQuestionTypeService GetQuestionTypeService();
        ISectionService GetSectionService();
        ISurveyStateService GetSurveyStateService();
        ISurveyService GetSurveyService();
        ISurveyTemplateService GetSurveyTemplateService();
        ISurveyTypeService GetSurveyTypeService();
        IServiceCollection GetAllServices();
    }
}