using System.Collections.Generic;
using System.Linq;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;
using EasySurvey.Web.ViewModels.Survey;
using Microsoft.AspNet.Authorization;
using Microsoft.AspNet.Mvc;
using Microsoft.AspNet.Http.Features;
using Microsoft.AspNet.Http;
using System.Security.Claims;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace EasySurvey.Web.Controllers
{
    [Authorize]
    public class SurveyController : Controller
    {
        private readonly ICustomerService customerService;
        private readonly ISurveyService surveyService;
        private readonly ISurveyTemplateService surveyTemplateService;
        private readonly IHttpContextAccessor _httpContextAccessor;
        private ISession _session => _httpContextAccessor.HttpContext.Session;

        public SurveyController(IHttpContextAccessor httpContextAccessor
            , ISurveyService surveyService
            , ISurveyTemplateService surveyTemplateService
            , ICustomerService customerService)
        {
            this.surveyService = surveyService;
            this.surveyTemplateService = surveyTemplateService;
            this.customerService = customerService;
        }

        // GET: /<controller>/
        [Authorize]
        public IActionResult Index()
        {
            var identityClaim = User.Claims.Where(claim => claim.Type == ClaimTypes.NameIdentifier);
            var userId = identityClaim.FirstOrDefault().Value;
            var surveys = surveyService.GetByUserId(userId);
            var result = new List<ListSurveyViewModel>();
            foreach (var survey in surveys)
            {
                result.Add(new ListSurveyViewModel
                {
                    Id = survey.Id,
                    SurveyTemplate = survey.SurveyTemplate.Title,
                    SurveyState = survey.SurveyState.Name,
                    Customer = survey.Customer.Name,
                    UserId = survey.UserId
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

        public IActionResult Create(int? ownerId = 1)
        {
            var surveyViewModel = new CreateSurveyViewModel();
            var customers = customerService.GetAll();
            var surveyTemplates = surveyTemplateService.GetAll(1);
            surveyViewModel.Customers = customers.ToList();
            surveyViewModel.SurveyTemplates = surveyTemplates.ToList();
            return View(surveyViewModel);
        }

        // POST: Customers/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(CreateSurveyViewModel createSurveyViewModel)
        {
            var identityClaim = User.Claims.Where(claim => claim.Type == ClaimTypes.NameIdentifier);
            var userId = identityClaim.FirstOrDefault().Value;

            var survey = new Survey();
            var surveyTemplate = surveyTemplateService.GetById(createSurveyViewModel.SurveyTemplateId);
            if (ModelState.IsValid)
            {
                survey.SurveyTemplateId = createSurveyViewModel.SurveyTemplateId;
                survey.SurveyStateId = 1;
                survey.CustomerId = createSurveyViewModel.CustomerId;
                survey.UserId = userId;
                surveyService.Save(survey);
                return RedirectToAction("Index", "AnswerGroups", new { id = survey.Id });
            }
            return View(survey);
        }

        public IActionResult Edit(int? id = 1)
        {
            var survey = surveyService.GetById(id.Value);           
            var surveyViewModel = new EditSurveyViewModel(survey);
            
            //var customer = customerService.GetById(survey.CustomerId);
            //var surveyTemplate = surveyTemplateService.GetById(1);
            //if (survey.SurveyTemplateId > 0)
            //{
            //    if (surveyTemplate.SectionGroup != null)
            //    {
            //        var answerGroupList = new List<AnswerGroupViewModel>();
            //        foreach (var answerGroup in survey.AnswerGroup)
            //        {
            //            answerGroupList.Add(new AnswerGroupViewModel(answerGroup));
            //        }
            //        surveyViewModel.AnswerGroups = answerGroupList;
            //    }
            //}
            //surveyViewModel.Customer = customer;
            return View(surveyViewModel);
        }
    }
}