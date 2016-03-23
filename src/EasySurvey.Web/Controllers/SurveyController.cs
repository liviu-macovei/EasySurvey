using System;
using System.Collections.Generic;
using System.Linq;
using EasySurvey.Services.ServiceDefinitions;
using EasySurvey.Web.Models;
using Microsoft.AspNet.Authorization;
using Microsoft.AspNet.Mvc;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace EasySurvey.Web.Controllers
{
    [Authorize]
    public class SurveyController : Controller
    {
        private readonly ISurveyService surveyService;
        private readonly ISurveyTemplateService surveyTemplateService;
        private readonly ICustomerService customerService;

        public SurveyController(ISurveyService surveyService, ISurveyTemplateService surveyTemplateService,ICustomerService customerService)
        {
            this.surveyService = surveyService;
            this.surveyTemplateService = surveyTemplateService;
            this.customerService = customerService;
        }

        // GET: /<controller>/
        [Authorize]
        public IActionResult Index()
        {
            var userId = User.Identity.Name;
            var surveys = surveyService.GetByUserId(userId);
            var result = new List<SurveyListView>();
            foreach (var survey in surveys)
            {
                result.Add(new SurveyListView
                {
                    Id = survey.Id,
                    SurveyTemplateId = survey.SurveyTemplateId,
                    SurveyState = survey.SurveyState.ToString(),
                    CustomerId = survey.Customer.Id,
                    CustomerName = survey.Customer.Name,
                    UserId = survey.UserId,
                    UserName = "SomeName"
                    //SurveyTemplate=survey.SurveyTemplate.ToString()
                });
            }
            return View(result);
        }

        // GET: Surveys/Details/5
        public IActionResult Details(int id)
        {
            var userId = User.Identity.Name;
            var survey = surveyService.GetById(id);
            survey.SurveyTemplate = surveyTemplateService.GetById(survey.SurveyTemplateId);
            survey.SurveyTemplate.SectionGroup = survey.SurveyTemplate.SectionGroup.OrderBy(m => m.SortOrder).ToArray();
            survey.Customer = customerService.GetById(survey.CustomerId);
            if (survey == null)
            {
                return HttpNotFound();
            }

            return View(survey);
        }
    }
}