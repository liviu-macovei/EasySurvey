using System;
using System.Linq;
using Microsoft.AspNet.Mvc;
using Microsoft.AspNet.Mvc.Rendering;
using Microsoft.Data.Entity;
using EasySurvey.Common.Models;
using EasySurvey.Services;
using EasySurvey.Services.ServiceDefinitions;
using EasySurvey.Web.Models;

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
        public IActionResult Index(Guid surveyTemplateId)
        {
            var sectionGroups = sectionGroupService.GetBySurveyTemplateId(surveyTemplateId);
            return View(sectionGroups);
        }

        // GET: SectionGroups/Details/5
        public IActionResult Details(Guid? id)
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
        public IActionResult Create(Guid surveyTemplateId)
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
                sectionGroup.Id = Guid.NewGuid();
                sectionGroupService.Save(sectionGroup);
                return RedirectToAction("Index");
            }
            ViewData["SurveyTemplateId"] = sectionGroup.SurveyTemplateId;//TODO make selectlist?
            return View(sectionGroup);
        }

        // GET: SectionGroups/Edit/5
        public IActionResult Edit(Guid? id)
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
        public IActionResult Delete(Guid? id)
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
        public IActionResult DeleteConfirmed(Guid id)
        {
            sectionGroupService.DeleteById(id);
            return RedirectToAction("Index");
        }
    }
}
