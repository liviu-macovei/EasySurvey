using System;
using System.Collections.Generic;
using Microsoft.AspNet.Authorization;
using Microsoft.AspNet.Mvc;

using EasySurvey.Web.Models;
using EasySurvey.Services;
using EasySurvey.Common.Models;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace EasySurvey.Web.Controllers
{
    [Authorize]
    public class SurveyController : Controller
    {
        readonly ISurveyService surveyService;

        public SurveyController(ISurveyService surveyService)
        {
            this.surveyService = surveyService;
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
                result.Add(new SurveyListView()
                {
                    Id = survey.Id,                    
                    SurveyTemplateId = survey.SurveyTemplateId,
                    SurveyState = survey.SurveyState.ToString(),
                    CustomerId = survey.Customer.Id,
                    CustomerName = survey.Customer.Name,
                    UserId = survey.UserId,
                    UserName = "SomeName",
                    //SurveyTemplate=survey.SurveyTemplate.ToString()
                });
            }
            return View(result);
        }

        // GET: Surveys/Details/5
        public IActionResult Details(Guid id)
        {           
            var userId = User.Identity.Name;
            Survey survey = surveyService.GetByUserIdAndId(userId,id);
            if (survey == null)
            {
                return HttpNotFound();
            }

            return View(survey);
        }

    }
}
