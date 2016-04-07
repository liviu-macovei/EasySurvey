using System.Linq;
using Microsoft.AspNet.Mvc;
using Microsoft.AspNet.Mvc.Rendering;
using Microsoft.Data.Entity;
using EasySurvey.Common.Models;
using EasySurvey.Web.Models;

namespace EasySurvey.Web.Controllers
{
    public class AnswerGroupsController : Controller
    {
        private ApplicationDbContext _context;

        public AnswerGroupsController(ApplicationDbContext context)
        {
            _context = context;    
        }

        // GET: AnswerGroups
        public IActionResult Index()
        {
            var applicationDbContext = _context.AnswerGroup.Include(a => a.SectionGroup).Include(a => a.Survey);
            return View(applicationDbContext.ToList());
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
            {
                return HttpNotFound();
            }

            AnswerGroup answerGroup = _context.AnswerGroup.Single(m => m.Id == id);
            if (answerGroup == null)
            {
                return HttpNotFound();
            }
            ViewData["SectionGroupId"] = new SelectList(_context.SectionGroup, "Id", "SectionGroup", answerGroup.SectionGroupId);
            ViewData["SurveyId"] = new SelectList(_context.Survey, "Id", "Survey", answerGroup.SurveyId);
            return View(answerGroup);
        }

        // POST: AnswerGroups/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(AnswerGroup answerGroup)
        {
            if (ModelState.IsValid)
            {
                _context.Update(answerGroup);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewData["SectionGroupId"] = new SelectList(_context.SectionGroup, "Id", "SectionGroup", answerGroup.SectionGroupId);
            ViewData["SurveyId"] = new SelectList(_context.Survey, "Id", "Survey", answerGroup.SurveyId);
            return View(answerGroup);
        }

        // GET: AnswerGroups/Delete/5
        [ActionName("Delete")]
        public IActionResult Delete(int? id)
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
