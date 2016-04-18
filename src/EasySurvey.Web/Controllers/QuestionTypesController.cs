using System.Linq;
using Microsoft.AspNet.Mvc;
using Microsoft.AspNet.Mvc.Rendering;
using Microsoft.Data.Entity;
using EasySurvey.Common.Models;
using EasySurvey.Web.Models;
using EasySurvey.Services.ServiceDefinitions;

namespace EasySurvey.Web.Controllers
{
    public class QuestionTypesController : Controller
    {
        private readonly IQuestionTypeService questionTypeService;

        public QuestionTypesController(IQuestionTypeService questionTypeService)
        {
            this.questionTypeService = questionTypeService;    
        }

        // GET: QuestionTypes
        public IActionResult Index()
        {
            var questionTypes = questionTypeService.GetAll();
            return View(questionTypes);
        }

        // GET: QuestionTypes/Details/5
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var questionType = questionTypeService.GetById(id.Value);
            if (questionType == null)
            {
                return HttpNotFound();
            }

            return View(questionType);
        }

        // GET: QuestionTypes/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: QuestionTypes/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(QuestionType questionType)
        {
            if (ModelState.IsValid)
            {
                questionType.Id = new int();
                questionTypeService.Save(questionType);
                return RedirectToAction("Index");
            }
            return View(questionType);
        }

        // GET: QuestionTypes/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            QuestionType questionType = questionTypeService.GetById(id.Value);
            if (questionType == null)
            {
                return HttpNotFound();
            }
            return View(questionType);
        }

        // POST: QuestionTypes/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(QuestionType questionType)
        {
            if (ModelState.IsValid)
            {
                questionType.Id = new int();
                questionTypeService.Save(questionType);
                return RedirectToAction("Index");
            }
            return View(questionType);
        }

        // GET: QuestionTypes/Delete/5
        [ActionName("Delete")]
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            QuestionType questionType = questionTypeService.GetById(id.Value);
            if (questionType == null)
            {
                return HttpNotFound();
            }
            return View(questionType);
        }

        // POST: QuestionTypes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            var deleted = questionTypeService.DeleteById(id);
            return RedirectToAction("Index");
        }
    }
}
