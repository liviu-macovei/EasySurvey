using Microsoft.AspNet.Mvc;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Web.Controllers
{
    public class SectionGroupsController : Controller
    {
        private readonly ISectionGroupService sectionGroupService;
        private readonly ISurveyTemplateService surveyTemplateService;


        public SectionGroupsController(ISectionGroupService sectionGroupService, ISurveyTemplateService surveyTemplateService)
        {           
            this.sectionGroupService = sectionGroupService;
            this.surveyTemplateService = surveyTemplateService;
        }

        // GET: SectionGroups
        public IActionResult Index(int surveyTemplateId)
        {
            var sectionGroups = sectionGroupService.GetBySurveyTemplateId(surveyTemplateId);
            return View(sectionGroups);
        }

        // GET: SectionGroups/Details/5
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            SectionGroup sectionGroup = sectionGroupService.GetById(id.Value);
            if (sectionGroup == null)
            {
                return HttpNotFound();
            }

            return View(sectionGroup);
        }

        // GET: SectionGroups/Create
        public IActionResult Create(int surveyTemplateId)
        {
            if(surveyTemplateService.Exists(surveyTemplateId))
            ViewData["SurveyTemplateId"] = surveyTemplateId;
            return View();
        }

        // POST: SectionGroups/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(SectionGroup sectionGroup)
        {
            if (ModelState.IsValid)
            {
                sectionGroup.Id = new int();
                sectionGroupService.Save(sectionGroup);
                return RedirectToAction("Index");
            }
            ViewData["SurveyTemplateId"] = sectionGroup.SurveyTemplateId;//TODO make selectlist?
            return View(sectionGroup);
        }

        // GET: SectionGroups/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            SectionGroup sectionGroup = sectionGroupService.GetById(id.Value);
            if (sectionGroup == null)
            {
                return HttpNotFound();
            }
            ViewData["SurveyTemplateId"] = sectionGroup.SurveyTemplateId;
            return View(sectionGroup);
        }

        // POST: SectionGroups/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(SectionGroup sectionGroup)
        {
            if (ModelState.IsValid)
            {
               sectionGroupService.Save(sectionGroup);
                return RedirectToAction("Index");
            }
            ViewData["SurveyTemplateId"] = sectionGroup.SurveyTemplateId;
            return View(sectionGroup);
        }

        // GET: SectionGroups/Delete/5
        [ActionName("Delete")]
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            SectionGroup sectionGroup = sectionGroupService.GetById(id.Value);
            if (sectionGroup == null)
            {
                return HttpNotFound();
            }

            return View(sectionGroup);
        }

        // POST: SectionGroups/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            sectionGroupService.DeleteById(id);
            return RedirectToAction("Index");
        }
    }
}
