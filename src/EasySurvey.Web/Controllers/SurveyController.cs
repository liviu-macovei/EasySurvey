using System.Collections.Generic;
using System.Linq;
using EasySurvey.Services.ServiceDefinitions;
using Microsoft.AspNet.Authorization;
using Microsoft.AspNet.Mvc;
using EasySurvey.Common.Models;
using EasySurvey.Web.ViewModels.Survey;
using EasySurvey.Web.ViewModels.Customer;

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
            var result = new List<ViewModels.Survey.ListSurveyViewModel>();
            foreach (var survey in surveys)
            {
                result.Add(new ViewModels.Survey.ListSurveyViewModel
                {
                    Id = survey.Id,
                    SurveyTemplate = survey.SurveyTemplate.Title,
                    SurveyState = survey.SurveyState.ToString(),
                    Customer = survey.Customer.Name,
                    UserId = survey.UserId,
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

        public IActionResult Create()
        {
            CreateSurveyViewModel createSurveyViewMode = new CreateSurveyViewModel();
            ICollection<Customer> customers = customerService.GetAll();
            List<SelectCustomerViewModel> listCustomerViewModels = new List<SelectCustomerViewModel>();            
            customers.ToList()
                .ForEach(x => listCustomerViewModels.Add(new SelectCustomerViewModel()
                {
                    Id = x.Id
                    ,
                    Name = x.Name
                    ,
                    Address = x.Address
                    ,
                    CVR = x.CVR
                    ,
                    Responsible = x.Responsible
                    ,
                    Telephone = x.Telephone
                }));
            createSurveyViewMode.Customers = listCustomerViewModels;
            return View(createSurveyViewMode);
        }

        // POST: Customers/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(CreateSurveyViewModel createSurveyViewModel)
        {
            Survey survey = new Survey();
            if (ModelState.IsValid)
            {
                survey.SurveyTemplateId = 1;
                survey.SurveyStateId = 1;
                survey.CustomerId = 1;
                surveyService.Save(survey);
                return RedirectToAction("Index");
            }
            return View(survey);
        }
    }
}