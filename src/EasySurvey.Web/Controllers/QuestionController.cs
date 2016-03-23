using System.Linq;
using Microsoft.AspNet.Mvc;
using Microsoft.AspNet.Mvc.Rendering;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Web.Controllers
{
    public class QuestionController : Controller
    {
        private readonly IQuestionService questionService;
        private readonly IQuestionTypeService questionTypeService;
        private readonly IOptionGroupService optionGroupService;

        public QuestionController(IQuestionService questionService, IQuestionTypeService questionTypeService, IOptionGroupService optionGroupService)
        {
            this.questionService = questionService;
            this.questionTypeService = questionTypeService;
            this.optionGroupService = optionGroupService;
        }

        // GET: Questions
        public IActionResult Index(int sectionId)
        {
            var questions = questionService.GetAll(sectionId);
            return View(questions.ToList());
        }

        // GET: Questions/Details/5
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            Question question = questionService.GetById(id.Value);
            if (question == null)
            {
                return HttpNotFound();
            }

            return View(question);
        }

        // GET: Questions/Create
        public IActionResult Create(int id)
        {
            ViewData["OptionGroupId"] = new SelectList(optionGroupService.GetAll());
            ViewData["QuestionTypeId"] = new SelectList(questionTypeService.GetAll());
            ViewData["SectionId"] = id;
            return View();
        }

        // POST: Questions/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Question question)
        {
            if (ModelState.IsValid)
            {
                questionService.Save(question);
                return RedirectToAction("Index");
            }
            ViewData["OptionGroupId"] = question.OptionGroupId;
            ViewData["QuestionTypeId"] = question.QuestionTypeId;
            ViewData["SectionId"] = question.SectionId;
            return View(question);
        }

        // GET: Questions/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            Question question = questionService.GetById(id.Value);
            if (question == null)
            {
                return HttpNotFound();
            }
            ViewData["OptionGroupId"] = new SelectList(new[] {question.OptionGroupId});
            ViewData["QuestionTypeId"] = new SelectList(new[] {question.QuestionTypeId });
            ViewData["SectionId"] = new SelectList(new[] { question.SectionId });
            return View(question);
        }

        // POST: Questions/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(Question question)
        {
            if (ModelState.IsValid)
            {
                questionService.Save(question);
                return RedirectToAction("Index");
            }
            ViewData["OptionGroupId"] = new SelectList(new[] { question.OptionGroupId });
            ViewData["QuestionTypeId"] = new SelectList(new[] { question.QuestionTypeId });
            ViewData["SectionId"] = new SelectList(new[] { question.SectionId });
            return View(question);
        }

        // GET: Questions/Delete/5
        [ActionName("Delete")]
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            Question question = questionService.GetById(id.Value);
            if (question == null)
            {
                return HttpNotFound();
            }

            return View(question);
        }

        // POST: Questions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            Question question = questionService.GetById(id);
            questionService.Delete(question);
            return RedirectToAction("Index");
        }
    }
}
