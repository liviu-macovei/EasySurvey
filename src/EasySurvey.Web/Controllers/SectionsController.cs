using System;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;
using Microsoft.AspNet.Mvc;

namespace EasySurvey.Web.Controllers
{
    public class SectionsController : Controller
    {
        private readonly ISectionService sectionService;

        public SectionsController(ISectionService sectionService)
        {
            this.sectionService = sectionService;
        }

        // GET: Sections/Details/5
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var section = sectionService.GetById(id.Value);
            if (section == null)
            {
                return HttpNotFound();
            }

            return View(section);
        }

        // GET: Sections/Create
        public IActionResult Create(int sectionGroupId)
        {
            ViewData["SectionGroupId"] = sectionGroupId;
            return View();
        }

        // POST: Sections/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Section section)
        {
            if (ModelState.IsValid)
            {
                section.Id = new int();
                sectionService.Save(section);
                return RedirectToAction("Details", new {id = section.Id});
            }
            ViewData["SectionGroupId"] = section.SectionGroupId;
            return View(section);
        }

        // GET: Sections/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var section = sectionService.GetById(id.Value);
            if (section == null)
            {
                return HttpNotFound();
            }
            ViewData["SectionGroupId"] = section.SectionGroupId;
            return View(section);
        }

        // POST: Sections/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(Section section)
        {
            if (ModelState.IsValid)
            {
                sectionService.Save(section);
                return RedirectToAction("Details", new {id = section.Id});
            }
            ViewData["SectionGroupId"] = section.SectionGroupId;
            return View(section);
        }

        // GET: Sections/Delete/5
        [ActionName("Delete")]
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var section = sectionService.GetById(id.Value);
            //  sectionService.Delete(section);

            if (section == null)
            {
                return HttpNotFound();
            }

            return View(section);
        }

        // POST: Sections/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            // Section section = sectionService.GetById(id);
            //  sectionService.Delete(section);
            sectionService.DeleteById(id);
            return RedirectToAction("Index", "Survey");
        }
    }
}