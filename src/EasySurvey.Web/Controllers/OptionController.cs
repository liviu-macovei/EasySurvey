using System;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;
using EasySurvey.Web.ViewModels.OptionGroups;
using Microsoft.AspNet.Mvc;
using Microsoft.AspNet.Mvc.Rendering;
using System.Collections.Generic;

namespace EasySurvey.Web.Controllers
{
    public class OptionController : Controller
    {
        private readonly IOptionGroupService optionGroupService;
        private readonly IOptionService optionService;

        public OptionController(IOptionGroupService optionGroupService, IOptionService optionService)
        {
            this.optionGroupService = optionGroupService;
            this.optionService = optionService;
        }

        // GET: Option
        public IActionResult Index(int optionGroupId)
        {
            var options = optionService.GetOptionsByOptionGroupId(optionGroupId);
            return View(options);
        }

        // GET: Option/Details/5
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var option = optionService.GetById(id.Value);
            if (option == null)
            {
                return HttpNotFound();
            }

            return View(option);
        }

        // GET: Option/Create
        public IActionResult Create(int optionGroupId)
        {
            ViewData["OptionGroupId"] = optionGroupId;
            return View();
        }

        // POST: Option/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([FromBody]Option option)
        {
            if (ModelState.IsValid)
            {
                option.Id = new int();
                optionService.Save(option);
                return RedirectToAction("Index");
            }
            return View(option);
        }

        public IActionResult AddAjax(string name, string description, int id)
        {
          /*  int oGroupId = 0;
            Int32.TryParse(optionGroupId, out oGroupId);*/
            if (ModelState.IsValid && (name != null && id > 0))
            {
                var option = new Option { Name = name, Description = description, OptionGroupId = id };
                optionService.Save(option);
            }            
            var model = optionService.GetOptionsByOptionGroupId(id);
            return PartialView(@"../OptionGroups/_ViewOptions", (List<Option>)model);
        }
        // POST: Option/DeleteAjax/5                
        public IActionResult DeleteAjax(int id,int optionGroupId)
        {
            var deleted = optionService.DeleteById(id);

            var model = optionService.GetOptionsByOptionGroupId(optionGroupId);
            return PartialView(@"../OptionGroups/_ViewOptions", (List<Option>)model);
        }
        /*  // GET: Option/Edit/5
          public IActionResult Edit(int? id)
          {
              if (id == null)
              {
                  return HttpNotFound();
              }

              Option option = _context.Option.Single(m => m.Id == id);
              if (option == null)
              {
                  return HttpNotFound();
              }
              ViewData["OptionGroupId"] = new SelectList(_context.OptionGroup, "Id", "OptionGroup", option.OptionGroupId);
              return System.Web.UI.WebControls.View(option);
          }

          // POST: Option/Edit/5
          [HttpPost]
          [ValidateAntiForgeryToken]
          public IActionResult Edit(Option option)
          {
              if (ModelState.IsValid)
              {
                  _context.Update(option);
                  _context.SaveChanges();
                  return RedirectToAction("Index");
              }
              ViewData["OptionGroupId"] = new SelectList(_context.OptionGroup, "Id", "OptionGroup", option.OptionGroupId);
              return System.Web.UI.WebControls.View(option);
          }

          // GET: Option/Delete/5
          [ActionName("Delete")]
          public IActionResult Delete(int? id)
          {
              if (id == null)
              {
                  return HttpNotFound();
              }

              Option option = _context.Option.Single(m => m.Id == id);
              if (option == null)
              {
                  return HttpNotFound();
              }

              return System.Web.UI.WebControls.View(option);
          }

         */
    }
}