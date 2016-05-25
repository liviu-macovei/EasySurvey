using System.Linq;
using Microsoft.AspNet.Mvc;
using Microsoft.AspNet.Mvc.Rendering;
using Microsoft.Data.Entity;
using EasySurvey.Common.Models;
using EasySurvey.Web.Models;
using System.Security.Claims;
using EasySurvey.Services.ServiceDefinitions;
using System.Collections.Generic;

namespace EasySurvey.Web.Controllers
{
    public class CommentsController : Controller
    {
        private ApplicationDbContext _context;
        private readonly ICommentService _commentService;


        public CommentsController(ApplicationDbContext context, ICommentService commentService)
        {
            _context = context;
            _commentService = commentService;
        }

        // GET: Comments
        public IActionResult Index()
        {
            var applicationDbContext = _context.Comment.Include(c => c.Survey);
            return View(applicationDbContext.ToList());
        }

        [HttpGet]
        public ActionResult Comments(int surveyId) // could use an enum for the selectable values
        {
            var model = _commentService.GetBySurveyId(surveyId);
            return PartialView(@"_ListComments", (List<Comment>)model);
        }

        // GET: Comments/Details/5
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            Comment comment = _context.Comment.Single(m => m.Id == id);
            if (comment == null)
            {
                return HttpNotFound();
            }

            return View(comment);
        }

        // GET: Comments/Create
        public IActionResult Create()
        {
            ViewData["SurveyId"] = new SelectList(_context.Survey, "Id", "Survey");
            return View();
        }

        // POST: Comments/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Comment comment)
        {
            if (ModelState.IsValid)
            {
                _context.Comment.Add(comment);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewData["SurveyId"] = new SelectList(_context.Survey, "Id", "Survey", comment.SurveyId);
            return View(comment);
        }

        public IActionResult AddAjax([FromBody]Comment comment)
        {
            if (ModelState.IsValid && (comment.Description != null && comment.SurveyId > 0))
            {
                var identityClaim = User.Claims.Where(claim => claim.Type == ClaimTypes.NameIdentifier);
                var userId = identityClaim.FirstOrDefault().Value;
                comment.UserId = userId;
                comment.CreatedOn = System.DateTime.Now;
                _commentService.Save(comment);
            }
            var model = _commentService.GetBySurveyId(comment.SurveyId);
            return PartialView(@"_ListComments", (List<Comment>)model);
        }

        // GET: Comments/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            Comment comment = _context.Comment.Single(m => m.Id == id);
            if (comment == null)
            {
                return HttpNotFound();
            }
            ViewData["SurveyId"] = new SelectList(_context.Survey, "Id", "Survey", comment.SurveyId);
            return View(comment);
        }

        // POST: Comments/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(Comment comment)
        {
            if (ModelState.IsValid)
            {
                _context.Update(comment);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewData["SurveyId"] = new SelectList(_context.Survey, "Id", "Survey", comment.SurveyId);
            return View(comment);
        }

        // GET: Comments/Delete/5
        [ActionName("Delete")]
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            Comment comment = _context.Comment.Single(m => m.Id == id);
            if (comment == null)
            {
                return HttpNotFound();
            }

            return View(comment);
        }

        // POST: Comments/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            Comment comment = _context.Comment.Single(m => m.Id == id);
            _context.Comment.Remove(comment);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }

        // POST: Option/DeleteAjax/5       
        [HttpDelete]
        public IActionResult DeleteAjax(int id, int surveyId)
        {
            var deleted = _commentService.DeleteById(id);
            var model = _commentService.GetBySurveyId(surveyId);
            return PartialView(@"_ListComments", (List<Comment>)model);
        }
    }
}
