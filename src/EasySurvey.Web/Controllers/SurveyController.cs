using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Security.Claims;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Authorization;
using Microsoft.AspNet.Mvc;

using EasySurvey.Web.Models;
using EasySurvey.Services;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace EasySurvey.Web.Controllers
{
    [Authorize]
    public class SurveyController : Controller
    {
        ISurveyService surveyService;

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
                    UserName = "SomeName"
                });
            }
            return View(result);
        }
    }
}
