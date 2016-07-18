using System.Linq;
using Microsoft.AspNet.Mvc;
using Microsoft.AspNet.Mvc.Rendering;
using Microsoft.Data.Entity;
using EasySurvey.Common.Models;
using EasySurvey.Web.Models;
using EasySurvey.Web.ViewModels.AnswerGroups;
using EasySurvey.Services.ServiceDefinitions;
using System.Collections.Generic;
using System;

namespace EasySurvey.Web.Controllers
{
    public class AnswerGroupsController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly IAnswerGroupService _answerGroupService;
        private readonly ISectionGroupService _sectionGroupService;

        public AnswerGroupsController(ApplicationDbContext context
            , IAnswerGroupService answerGroupService
            , ISectionGroupService sectionGroupService)
        {
            _context = context;
            _answerGroupService = answerGroupService;
            _sectionGroupService = sectionGroupService;
        }

        // GET: AnswerGroups
        public IActionResult Index(int? id, int selected = 0)
        {
            if (id == null)
            {
                return HttpNotFound();
            }
            List<AnswerGroupViewModel> listModels = new List<AnswerGroupViewModel>();
            var answerGroups = _answerGroupService.GetBySurveyId(id.Value);
            answerGroups.OrderBy(item=> item.SectionGroup.SortOrder).ToList().ForEach(item => listModels.Add(new AnswerGroupViewModel(item)));

            AnswerGroupListViewModel listModel = new AnswerGroupListViewModel();
            listModel.SurveyId = id.Value;
            listModel.AnswerGroupViewModel = listModels;
            listModel.SelectedId = selected > 0 ? selected : listModels.First().SectionGroupId;
            return View(listModel);
        }

        // GET: AnswerGroups/Details/5
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            AnswerGroup answerGroup = _context.AnswerGroup.Single(m => m.Id == id);
            if (answerGroup == null)
            {
                return HttpNotFound();
            }

            return View(answerGroup);
        }

        // GET: AnswerGroups/Create
        public IActionResult Create()
        {
            ViewData["SectionGroupId"] = new SelectList(_context.SectionGroup, "Id", "SectionGroup");
            ViewData["SurveyId"] = new SelectList(_context.Survey, "Id", "Survey");
            return View();
        }

        // POST: AnswerGroups/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(AnswerGroup answerGroup)
        {
            if (ModelState.IsValid)
            {
                _context.AnswerGroup.Add(answerGroup);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewData["SectionGroupId"] = new SelectList(_context.SectionGroup, "Id", "SectionGroup", answerGroup.SectionGroupId);
            ViewData["SurveyId"] = new SelectList(_context.Survey, "Id", "Survey", answerGroup.SurveyId);
            return View(answerGroup);
        }

        // GET: AnswerGroups/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
                return HttpNotFound();

            var answerGroup = _answerGroupService.GetById(id.Value);
            if (answerGroup == null)
                return HttpNotFound();

            AnswerGroupViewModel editAnswerGroupViewModel = new AnswerGroupViewModel(answerGroup);
            return View(editAnswerGroupViewModel);
        }

        [HttpGet]
        public IActionResult EditAjax(int id)
        {
            var answerGroup = _answerGroupService.GetById(id);
            if (answerGroup == null)
                return HttpNotFound();
            AnswerGroupViewModel editAnswerGroupViewModel = new AnswerGroupViewModel(answerGroup);
            return PartialView(@"_EditAnswerGroup", editAnswerGroupViewModel);
        }

        [HttpGet]
        public IActionResult EditAnswerGroupsAjax(int surveyId, int sectionGroupId)
        {
            try
            {
                var answerGroups = _answerGroupService.GetBySurveyAndSectionGroupId(surveyId, sectionGroupId);
                if (answerGroups == null)
                    return HttpNotFound();
                AnswerGroupSelectViewModel selectViewModel = new AnswerGroupSelectViewModel() { SurveyId = surveyId, SectionGroupId = sectionGroupId };
                foreach (var answerGroup in answerGroups)
                    selectViewModel.AnswerGroupsViewModel.Add(new AnswerGroupViewModel(answerGroup));
                return PartialView(@"_EditAnswerGroups", selectViewModel);
            }
            catch (Exception ex)
            {
                throw ex;
            }   
            
        }

        // POST: AnswerGroups/Edit/5
        [HttpPost("Edit")]
        //[ValidateAntiForgeryToken]
        public IActionResult Edit(AnswerGroupSelectViewModel selectViewModel, string command)
        {
            foreach (var answerGroup in selectViewModel.AnswerGroupsViewModel)
            {
                var existingAnswerGroup = _answerGroupService.GetById(answerGroup.Id);
                if (existingAnswerGroup != null)
                {
                    if (existingAnswerGroup.Address == null)
                        existingAnswerGroup.Address = new Address();
                    existingAnswerGroup.Address.AddressLine1 = answerGroup.AddressLine1;
                    existingAnswerGroup.Address.PostalCode = answerGroup.PostalCode;
                    existingAnswerGroup.Address.City = answerGroup.City;
                    existingAnswerGroup.Address.Country = answerGroup.Country;

                    foreach (var answerSection in answerGroup.AnswerSection)
                    {
                        AnswerSection existingAnswerSection = existingAnswerGroup.AnswerSection.Where(item => item.Id == answerSection.Id).FirstOrDefault();
                        if (existingAnswerSection != null)
                        {
                            foreach (var answer in answerSection.Answer)
                            {
                                Answer existingAnswer = existingAnswerSection.Answer.Where(item => item.Id == answer.Id).FirstOrDefault();
                                existingAnswer.AnswerText = answer.AnswerText;
                                existingAnswer.DefaultComments = answer.Comments;
                                existingAnswer.OptionId = answer.OptionId;
                            }
                        }
                    }
                    _answerGroupService.Save(existingAnswerGroup);
                }
            }

            switch (command)
            {
                case "Save":
                        break;
                case "Extend":
                    AnswerGroupViewModel result = selectViewModel.AnswerGroupsViewModel.OrderBy(item => item.SortOrder).FirstOrDefault();
                    var existingAnswerGroup = _answerGroupService.GetById(result.Id);
                    _answerGroupService.Extend(existingAnswerGroup);
                    break;
            }

            if (ModelState.IsValid)
            {
                return RedirectToAction("Index", new { id = selectViewModel.SurveyId, selected = selectViewModel.SectionGroupId });
            }
            return RedirectToAction("Index", new { id = selectViewModel.SurveyId, selected = selectViewModel.SectionGroupId });
        }

        [HttpPost]
        //[ValidateAntiForgeryToken]
        public IActionResult ExtendAjax([FromBody]AnswerGroupViewModel answerGroup)
        {
            if (ModelState.IsValid)
            {
                var toUpdate = _answerGroupService.GetById(answerGroup.Id);
                var result = _answerGroupService.Extend(toUpdate);
                return RedirectToAction("Index", new { id = answerGroup.SurveyId, selected = answerGroup.SectionGroupId });
            }
            ViewData["SectionGroupId"] = new SelectList(_context.SectionGroup, "Id", "SectionGroup", answerGroup.SectionGroupId);
            ViewData["SurveyId"] = new SelectList(_context.Survey, "Id", "Survey", answerGroup.SurveyId);
            return RedirectToAction("Index", new { id = answerGroup.SurveyId, selected = answerGroup.SectionGroupId });
        }

        // POST: AnswerGroups/Edit/5
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public IActionResult EditAjax([FromBody]AnswerGroupViewModel answerGroup)
        {
            var toUpdate = _answerGroupService.GetById(answerGroup.Id);
            toUpdate.IsUsed = answerGroup.IsUsed;
            var result = _answerGroupService.Save(toUpdate);

            var answerGroups = _answerGroupService.GetBySurveyAndSectionGroupId(answerGroup.SurveyId, answerGroup.SectionGroupId);
            if (answerGroups == null)
                return HttpNotFound();
            AnswerGroupSelectViewModel selectViewModel = new AnswerGroupSelectViewModel() { SurveyId = answerGroup.SurveyId, SectionGroupId = answerGroup.SectionGroupId };
            foreach (var answerGroupUpdated in answerGroups)
                selectViewModel.AnswerGroupsViewModel.Add(new AnswerGroupViewModel(answerGroupUpdated));
            return PartialView(@"_EditAnswerGroups", selectViewModel);
        }

        // GET: AnswerGroups/Delete/5
        [ActionName("Delete")]
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var answerGroup = _answerGroupService.GetById(id.Value);
            if (answerGroup == null)
            {
                return HttpNotFound();
            }

            var result = _answerGroupService.DeleteById(id.Value);
            return RedirectToAction("Index", new { id = answerGroup.SurveyId });
        }

        // POST: AnswerGroups/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            AnswerGroup answerGroup = _context.AnswerGroup.Single(m => m.Id == id);
            _context.AnswerGroup.Remove(answerGroup);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
