using System.Linq;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;
using Microsoft.AspNet.Mvc;

namespace EasySurvey.Web.Controllers
{
    public class CustomersController : Controller
    {
        private readonly ICustomerService customerService;

        public CustomersController(ICustomerService customerService)
        {
            this.customerService = customerService;
        }

        // GET: Customers
        public IActionResult Index()
        {
            var customers = customerService.GetAll();
            return View(customers.ToList());
        }

        // GET: Customers/Details/5
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var customer = customerService.GetById(id.Value);
            if (customer == null)
            {
                return HttpNotFound();
            }

            return View(customer);
        }

        // GET: Customers/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Customers/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Customer customer)
        {
            if (ModelState.IsValid)
            {
                customer.Id = new int();
                customerService.Save(customer);
                return RedirectToAction("Index");
            }
            return View(customer);
        }

        // GET: Customers/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var customer = customerService.GetById(id.Value);
            if (customer == null)
            {
                return HttpNotFound();
            }
            return View(customer);
        }

        // POST: Customers/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(Customer customer)
        {
            if (ModelState.IsValid)
            {
                customerService.Save(customer);
                return RedirectToAction("Index");
            }
            return View(customer);
        }

        // GET: Customers/Delete/5
        [ActionName("Delete")]
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }

            var customer = customerService.GetById(id.Value);
            if (customer == null)
            {
                return HttpNotFound();
            }

            return View(customer);
        }

        // POST: Customers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            customerService.DeleteById(id);
            return RedirectToAction("Index");
        }
    }
}