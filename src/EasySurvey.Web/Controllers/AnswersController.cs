using System.Linq;
using Microsoft.AspNet.Mvc;
using Microsoft.AspNet.Mvc.Rendering;
using Microsoft.Data.Entity;
using EasySurvey.Web.Models;
using EasySurvey.Web.ViewModels.Answers;

namespace EasySurvey.Web.Controllers
{
    public class AnswersController : Controller
    {
        private ApplicationDbContext _context;

        public AnswersController(ApplicationDbContext context)
        {
            _context = context;    
        }

        // GET: Answers
        public IActionResult Index()
        {
            return View(_context.AnswerViewModel.ToList());
        }

        // GET: Answers/Details/5
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            AnswerViewModel answerViewModel = _context.AnswerViewModel.Single(m => m.Id == id);
            if (answerViewModel == null)
            {
                return HttpNotFound();
            }

            return View(answerViewModel);
        }

        // GET: Answers/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Answers/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(AnswerViewModel answerViewModel)
        {
            if (ModelState.IsValid)
            {
                _context.AnswerViewModel.Add(answerViewModel);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(answerViewModel);
        }

        // GET: Answers/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            AnswerViewModel answerViewModel = _context.AnswerViewModel.Single(m => m.Id == id);
            if (answerViewModel == null)
            {
                return HttpNotFound();
            }
            return View(answerViewModel);
        }

        // POST: Answers/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(AnswerViewModel answerViewModel)
        {
            if (ModelState.IsValid)
            {
                _context.Update(answerViewModel);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(answerViewModel);
        }

        // GET: Answers/Delete/5
        [ActionName("Delete")]
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            AnswerViewModel answerViewModel = _context.AnswerViewModel.Single(m => m.Id == id);
            if (answerViewModel == null)
            {
                return HttpNotFound();
            }

            return View(answerViewModel);
        }

        // POST: Answers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            AnswerViewModel answerViewModel = _context.AnswerViewModel.Single(m => m.Id == id);
            _context.AnswerViewModel.Remove(answerViewModel);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
