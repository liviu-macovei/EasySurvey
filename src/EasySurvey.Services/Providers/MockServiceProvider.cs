using System.Collections;
using EasySurvey.Services.Mock;
using EasySurvey.Services.ServiceDefinitions;
using Microsoft.Extensions.DependencyInjection;

namespace EasySurvey.Services.Providers
{
    public class MockServiceProvider : IServiceProvider
    {
        public ISectionGroupService GetSectionGroupService()
        {
            return new SectionGroupServiceMock();
        }

        public IAnswerGroupService GetAnswerGroupService()
        {
            return new AnswerGroupServiceMock();
        }

        public IAnswerService GetAnswerService()
        {
            return new AnswerServiceMock();
        }

        public ICommentService GetCommentService()
        {
            return new CommentServiceMock();
        }

        public ICustomerService GetCustomerService()
        {
            return new CustomerServiceMock();
        }

        public INextQuestionService GetNextQuestionService()
        {
            return new NextQuestionServiceMock();
        }

        public IOptionGroupService GetOptionGroupService()
        {
            return new OptionGroupServiceMock();
        }

        public IOptionService GetOptionService()
        {
            return new OptionServiceMock();
        }

        public IOwnerService GetOwnerService()
        {
            return new OwnerServiceMock();
        }

        public IQuestionService GetQuestionService()
        {
            return new QuestionServiceMock();
        }

        public IQuestionTypeService GetQuestionTypeService()
        {
            return new QuestionTypeServiceMock();
        }

        public ISectionService GetSectionService()
        {
            return new SectionServiceMock();
        }

        public ISurveyStateService GetSurveyStateService()
        {
            return new SurveyStateServiceMock();
        }

        public ISurveyService GetSurveyService()
        {
            return new SurveyServiceMock();
        }

        public ISurveyTemplateService GetSurveyTemplateService()
        {
            return new SurveyTemplateServiceMock();
        }

        public ISurveyTypeService GetSurveyTypeService()
        {
            return new SurveyTypeServiceMock();
        }

        public IServiceCollection GetAllServices()
        {
            throw new System.NotImplementedException();
        }
    }
}