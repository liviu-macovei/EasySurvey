using System.Collections.Generic;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;
using EasySurvey.Web.ViewModels.OptionGroups;
using Microsoft.AspNet.Mvc;
using Microsoft.AspNet.Mvc.Rendering;

namespace EasySurvey.Web.Controllers
{
    public class OptionGroupsController : Controller
    {
        private readonly IOptionGroupService optionGroupService;
        private readonly IOptionService optionService;

        public OptionGroupsController(IOptionGroupService optionGroupService, IOptionService optionService)
        {
            this.optionGroupService = optionGroupService;
            this.optionService = optionService;
        }

        // GET: OptionGroups
        public IActionResult Index()
        {
            var optionGroups = optionGroupService.GetAll();
            return View(optionGroups);
        }

        // GET: OptionGroups
        public IActionResult AjaxDemo()
        {
            var optionGroups = optionGroupService.GetAll();
            var model = new ListOptionGroupsViewModel {OptionGroups = new SelectList(optionGroups, "Id", "Name")};
            return View(model);
        }

        [HttpGet]
        public ActionResult Options(int selectedValue) // could use an enum for the selectable values
        {
            var model = optionService.GetOptionsByOptionGroupId(selectedValue);

            //string partialViewName = null;
            // populate with data appropriate to the partial views
            //switch (selectedValue)
            //{
            //    case 0:
            //        partialViewName = "partial view name for item 0";
            //        // populate "model" with the appropriate data
            //        break;
            //    case 1:
            //        partialViewName = "partial view name for item 1";
            //        // populate "model" with the appropriate data
            //        break;
            //    // and so on...
            //    default:
            //        throw new ArgumentException("unknown selected value", "selectedValue");
            //        break;
            //}

            return PartialView(@"_ViewOptions", (List<Option>) model);
        }

        // GET: OptionGroups/Details/5
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var optionGroup = optionGroupService.GetById(id.Value);
            if (optionGroup == null)
            {
                return HttpNotFound();
            }

            return View(optionGroup);
        }

        // GET: OptionGroups/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: OptionGroups/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(OptionGroup optionGroup)
        {
            if (ModelState.IsValid)
            {
                optionGroup.Id = new int();
                optionGroupService.Save(optionGroup);
                return RedirectToAction("Index");
            }
            return View(optionGroup);
        }

        // GET: OptionGroups/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var optionGroup = optionGroupService.GetById(id.Value);
            if (optionGroup == null)
            {
                return HttpNotFound();
            }
            return View(optionGroup);
        }

        // POST: OptionGroups/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(OptionGroup optionGroup)
        {
            if (ModelState.IsValid)
            {
                optionGroupService.Save(optionGroup);
                return RedirectToAction("Index");
            }
            return View(optionGroup);
        }

        // GET: OptionGroups/Delete/5
        [ActionName("Delete")]
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var optionGroup = optionGroupService.GetById(id.Value);
            if (optionGroup == null)
            {
                return HttpNotFound();
            }

            return View(optionGroup);
        }

        // POST: OptionGroups/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            optionGroupService.DeleteById(id);
            return RedirectToAction("Index");
        }
    }
}