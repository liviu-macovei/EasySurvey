using System.Collections.Generic;
using System.Linq;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;
using EasySurvey.Web.ViewModels.SectionGroup;
using EasySurvey.Web.ViewModels.Survey;
using Microsoft.AspNet.Authorization;
using Microsoft.AspNet.Mvc;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace EasySurvey.Web.Controllers
{
    [Authorize]
    public class SurveyController : Controller
    {
        private readonly IAnswerGroupService answerGroupService;
        private readonly ICustomerService customerService;
        private readonly ISectionGroupService sectionGroupService;
        private readonly ISurveyService surveyService;
        private readonly ISurveyTemplateService surveyTemplateService;

        public SurveyController(ISurveyService surveyService, ISurveyTemplateService surveyTemplateService,
            ICustomerService customerService, ISectionGroupService sectionGroupService,
            IAnswerGroupService answerGroupService)
        {
            this.surveyService = surveyService;
            this.surveyTemplateService = surveyTemplateService;
            this.customerService = customerService;
            this.sectionGroupService = sectionGroupService;
            this.answerGroupService = answerGroupService;
        }

        // GET: /<controller>/
        [Authorize]
        public IActionResult Index()
        {
            var userId = User.Identity.Name;
            var surveys = surveyService.GetByUserId(userId);
            var result = new List<ListSurveyViewModel>();
            foreach (var survey in surveys)
            {
                result.Add(new ListSurveyViewModel
                {
                    Id = survey.Id,
                    SurveyTemplate = survey.SurveyTemplate.Title,
                    SurveyState = survey.SurveyState.ToString(),
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

        public IActionResult Create(int? surveyTemplateId = 1)
        {
            var surveyViewModel = new CreateSurveyViewModel();
            var customers = customerService.GetAll();
            /*  List<Customer> listCustomerViewModels = new List<Customer>();            
              customers.ToList()
                  .ForEach(x => listCustomerViewModels.Add(new Customer()
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
                  }));*/
            var surveyTemplate = surveyTemplateService.GetById(1);
            if (surveyTemplateId != null)
            {
                var sectionGroups = sectionGroupService.GetBySurveyTemplateId(surveyTemplate.Id);
                if (sectionGroups != null)
                {
                    List<SelectSectionGroupViewModel> selectSectionList=new List<SelectSectionGroupViewModel>();
                    foreach (var sectionGroup in sectionGroups)
                    {
                        selectSectionList.Add(new SelectSectionGroupViewModel(sectionGroup));
                    }
                    surveyViewModel.SectionGroups = selectSectionList;
                }                
            }

            surveyViewModel.Customers = customers.ToList();
            return View(surveyViewModel);
        }

        // POST: Customers/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(CreateSurveyViewModel createSurveyViewModel)
        {
            var survey = new Survey();
            if (ModelState.IsValid)
            {
                survey.SurveyTemplateId = 1;
                survey.SurveyStateId = 1;
                survey.CustomerId = 1;
                survey.UserId = User.ToString();
                surveyService.Save(survey);
                //TODO: remove hard coded ids
                var surveyTemplate = surveyTemplateService.GetById(1);
                var sectionGroups = sectionGroupService.GetBySurveyTemplateId(1);


                //TODO Save the ids of the answers that are created succesfully,
                //if save fails for any of the answers then delete all of them
                //this should behave like a transaction
                foreach (var sectionGroup in createSurveyViewModel.SectionGroups)
                {
                    if (sectionGroup.IsSelected)
                        answerGroupService.Save(new AnswerGroup
                        {
                            SectionGroupId = sectionGroup.Id,
                            SurveyId = survey.Id
                        });
                }
                return RedirectToAction("Index");
            }
            return View(survey);
        }
    }
}