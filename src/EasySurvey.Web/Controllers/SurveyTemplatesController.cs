using System.Linq;
using Microsoft.AspNet.Mvc;
using Microsoft.AspNet.Mvc.Rendering;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Web.Controllers
{
    public class SurveyTemplatesController : Controller
    {
        
        private readonly ISurveyTemplateService surveyTemplateService;
        private readonly ISurveyTypeService surveyTypeService;

        public SurveyTemplatesController(ISurveyTemplateService surveyTemplateService,ISurveyTypeService surveyTypeService)
        {            
            this.surveyTemplateService = surveyTemplateService;
            this.surveyTypeService = surveyTypeService;
        }

        // GET: SurveyTemplates
        public IActionResult Index(int ownerId)
        {
            var sectionTemplates = surveyTemplateService.GetAll(ownerId);
            return View(sectionTemplates.ToList());
        }

        // GET: SurveyTemplates/Details/5
        public IActionResult Details(int id)
        {
            var surveyTemplate = surveyTemplateService.GetById(id);

            return View(surveyTemplate);
        }

        // GET: SurveyTemplates/Create
        public IActionResult Create(int id)
        {
            ViewData["OwnerId"] = id;
            ViewData["SurveyTypeId"] = new SelectList(surveyTypeService.GetAll());
            return View();
        }

        // POST: SurveyTemplates/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(SurveyTemplate surveyTemplate)
        {
            if (ModelState.IsValid)
            {
                surveyTemplateService.Save(surveyTemplate);
                return RedirectToAction("Index");
            }
            ViewData["OwnerId"] = surveyTemplate.OwnerId;
            ViewData["SurveyTypeId"] = new SelectList(new[] {surveyTemplate.SurveyTypeId});
            return View(surveyTemplate);
        }

        // GET: SurveyTemplates/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            SurveyTemplate surveyTemplate = surveyTemplateService.GetById(id.Value);
            if (surveyTemplate == null)
            {
                return HttpNotFound();
            }
            ViewData["OwnerId"] = surveyTemplate.OwnerId;
            ViewData["SurveyTypeId"] = new SelectList(surveyTypeService.GetAll());
            return View(surveyTemplate);
        }

        // POST: SurveyTemplates/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(SurveyTemplate surveyTemplate)
        {
            if (ModelState.IsValid)
            {
                surveyTemplateService.Save(surveyTemplate);
                return RedirectToAction("Index");
            }
            ViewData["OwnerId"] = surveyTemplate.OwnerId;
            ViewData["SurveyTypeId"] = new SelectList(new[] {surveyTemplate.SurveyTypeId});
            return View(surveyTemplate);
        }

        // GET: SurveyTemplates/Delete/5
        [ActionName("Delete")]
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            SurveyTemplate surveyTemplate = surveyTemplateService.GetById(id.Value);
            if (surveyTemplate == null)
            {
                return HttpNotFound();
            }

            return View(surveyTemplate);
        }

        // POST: SurveyTemplates/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {            
            surveyTemplateService.DeleteById(id);
            return RedirectToAction("Index");
        }
    }
}
