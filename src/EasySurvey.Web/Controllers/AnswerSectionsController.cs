using System.Linq;
using Microsoft.AspNet.Mvc;
using Microsoft.AspNet.Mvc.Rendering;
using Microsoft.Data.Entity;
using EasySurvey.Common.Models;
using EasySurvey.Web.Models;

namespace EasySurvey.Web.Controllers
{
    public class AnswerSectionsController : Controller
    {
        private ApplicationDbContext _context;

        public AnswerSectionsController(ApplicationDbContext context)
        {
            _context = context;    
        }

        // GET: AnswerSections
        public IActionResult Index()
        {
            var applicationDbContext = _context.AnswerSection.Include(a => a.AnswerGroup).Include(a => a.Section);
            return View(applicationDbContext.ToList());
        }

        // GET: AnswerSections/Details/5
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            AnswerSection answerSection = _context.AnswerSection.Single(m => m.Id == id);
            if (answerSection == null)
            {
                return HttpNotFound();
            }

            return View(answerSection);
        }

        // GET: AnswerSections/Create
        public IActionResult Create()
        {
            ViewData["AnswerGroupId"] = new SelectList(_context.AnswerGroup, "Id", "AnswerGroup");
            ViewData["SectionId"] = new SelectList(_context.Section, "Id", "Section");
            return View();
        }

        // POST: AnswerSections/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(AnswerSection answerSection)
        {
            if (ModelState.IsValid)
            {
                _context.AnswerSection.Add(answerSection);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewData["AnswerGroupId"] = new SelectList(_context.AnswerGroup, "Id", "AnswerGroup", answerSection.AnswerGroupId);
            ViewData["SectionId"] = new SelectList(_context.Section, "Id", "Section", answerSection.SectionId);
            return View(answerSection);
        }

        // GET: AnswerSections/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            AnswerSection answerSection = _context.AnswerSection.Single(m => m.Id == id);
            if (answerSection == null)
            {
                return HttpNotFound();
            }
            ViewData["AnswerGroupId"] = new SelectList(_context.AnswerGroup, "Id", "AnswerGroup", answerSection.AnswerGroupId);
            ViewData["SectionId"] = new SelectList(_context.Section, "Id", "Section", answerSection.SectionId);
            return View(answerSection);
        }

        // POST: AnswerSections/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(AnswerSection answerSection)
        {
            if (ModelState.IsValid)
            {
                _context.Update(answerSection);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewData["AnswerGroupId"] = new SelectList(_context.AnswerGroup, "Id", "AnswerGroup", answerSection.AnswerGroupId);
            ViewData["SectionId"] = new SelectList(_context.Section, "Id", "Section", answerSection.SectionId);
            return View(answerSection);
        }

        // GET: AnswerSections/Delete/5
        [ActionName("Delete")]
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            AnswerSection answerSection = _context.AnswerSection.Single(m => m.Id == id);
            if (answerSection == null)
            {
                return HttpNotFound();
            }

            return View(answerSection);
        }

        // POST: AnswerSections/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            AnswerSection answerSection = _context.AnswerSection.Single(m => m.Id == id);
            _context.AnswerSection.Remove(answerSection);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
