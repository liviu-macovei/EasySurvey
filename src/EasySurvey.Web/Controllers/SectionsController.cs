using System;
using EasySurvey.Common.Models;
using EasySurvey.Services;
using EasySurvey.Services.ServiceDefinitions;
using Microsoft.AspNet.Mvc;

namespace EasySurvey.Web.Controllers
{
    public class SectionsController : Controller
    {
        private readonly ISectionService sectionService;

        public SectionsController(IServiceProviderFactory serviceProviderFactory)
        {
            var serviceProvider = serviceProviderFactory.GetServiceProvider();
            sectionService = serviceProvider.GetSectionService();
        }

        // GET: Sections/Details/5
        public IActionResult Details(Guid? id)
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
        public IActionResult Create(Guid sectionGroupId)
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
                section.Id = Guid.NewGuid();
                sectionService.Save(section);
                return RedirectToAction("Details", new {id = section.Id});
            }
            ViewData["SectionGroupId"] = section.SectionGroupId;
            return View(section);
        }

        // GET: Sections/Edit/5
        public IActionResult Edit(Guid? id)
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
        public IActionResult Delete(Guid? id)
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
        public IActionResult DeleteConfirmed(Guid id)
        {
            // Section section = sectionService.GetById(id);
            //  sectionService.Delete(section);
            sectionService.DeleteById(id);
            return RedirectToAction("Index", "Survey");
        }
    }
}