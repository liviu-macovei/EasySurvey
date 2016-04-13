using System.Linq;
using EasySurvey.Common.Models;
using EasySurvey.Services.ServiceDefinitions;
using Microsoft.AspNet.Mvc;
using System.Collections.Generic;
using EasySurvey.Web.ViewModels.Customers;

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
            List<ListCustomerViewModel> listCustomerViewModels = new List<ListCustomerViewModel>();
            var customers = customerService.GetAll();
            customers.ToList()
                .ForEach(x => listCustomerViewModels.Add(new ListCustomerViewModel()
                {
                    Id = x.Id
                    , Name = x.Name
                    , Address = x.Address
                    , CVR = x.CVR
                    , Responsible = x.Responsible
                    , Telephone = x.Telephone
                }));
            return View(listCustomerViewModels);
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

            CreateCustomerViewModel customerViewModel = new CreateCustomerViewModel();
            customerViewModel.Name = customer.Name;
            customerViewModel.Address = customer.Address;
            customerViewModel.Telephone = customer.Telephone;
            customerViewModel.Email = customer.Email;
            customerViewModel.HomePage = customer.HomePage;
            customerViewModel.IndustrialClassification = customer.IndustrialClassification;
            customerViewModel.Subsidiaries = customer.Subsidiaries;
            customerViewModel.CVR = customer.CVR;
            customerViewModel.Responsible = customer.Responsible;
            customerViewModel.ResponsibleEmail = customer.ResponsibleEmail;
            customerViewModel.ResponsibleTelephone = customer.ResponsibleTelephone;
            customerViewModel.IsPBSPayment = customer.IsPBSPayment;
            if (customerViewModel.IsPBSPayment)
            {
                customerViewModel.RegistrationNumber = customer.RegistrationNumber;
                customerViewModel.AccountNumber = customer.AccountNumber;
            }

            customerViewModel.MultiannualAgreement = customer.MultiannualAgreement;
            customerViewModel.Forwards = customer.Forwards;
            customerViewModel.Activities = customer.Activities;

            return View(customerViewModel);
        }

        // GET: Customers/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Customers/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(CreateCustomerViewModel customerViewModel)
        {
            Customer customer = new Customer();
            if (ModelState.IsValid)
            {
                customer.Name = customerViewModel.Name;
                customer.Address = customerViewModel.Address;
                customer.Telephone = customerViewModel.Telephone;
                customer.Email = customerViewModel.Email;
                customer.HomePage = customerViewModel.HomePage;
                customer.IndustrialClassification = customerViewModel.IndustrialClassification;
                customer.Subsidiaries = customerViewModel.Subsidiaries;
                customer.CVR = customerViewModel.CVR;
                customer.Responsible = customerViewModel.Responsible;
                customer.ResponsibleEmail = customerViewModel.ResponsibleEmail;
                customer.ResponsibleTelephone = customerViewModel.ResponsibleTelephone;
                customer.IsPBSPayment = customerViewModel.IsPBSPayment;
                if (customerViewModel.IsPBSPayment)
                {
                    customer.RegistrationNumber = customerViewModel.RegistrationNumber;
                    customer.AccountNumber = customerViewModel.AccountNumber;
                }

                customer.MultiannualAgreement = customerViewModel.MultiannualAgreement;
                customer.Forwards = customerViewModel.Forwards;
                customer.Activities = customerViewModel.Activities;

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

            EditCustomerViewModel customerViewModel = new EditCustomerViewModel();
            customerViewModel.Name = customer.Name;
            customerViewModel.Address = customer.Address;
            customerViewModel.Telephone = customer.Telephone;
            customerViewModel.Email = customer.Email;
            customerViewModel.HomePage = customer.HomePage;
            customerViewModel.IndustrialClassification = customer.IndustrialClassification;
            customerViewModel.Subsidiaries = customer.Subsidiaries;
            customerViewModel.CVR = customer.CVR;
            customerViewModel.Responsible = customer.Responsible;
            customerViewModel.ResponsibleEmail = customer.ResponsibleEmail;
            customerViewModel.ResponsibleTelephone = customer.ResponsibleTelephone;
            customerViewModel.IsPBSPayment = customer.IsPBSPayment;
            if (customerViewModel.IsPBSPayment)
            {
                customerViewModel.RegistrationNumber = customer.RegistrationNumber;
                customerViewModel.AccountNumber = customer.AccountNumber;
            }

            customerViewModel.MultiannualAgreement = customer.MultiannualAgreement;
            customerViewModel.Forwards = customer.Forwards;
            customerViewModel.Activities = customer.Activities;

            return View(customerViewModel);
        }

        // POST: Customers/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(EditCustomerViewModel customerViewModel)
        {
            Customer customer = new Customer();
            if (ModelState.IsValid)
            {
                customer.Id = customerViewModel.Id;
                customer.Name = customerViewModel.Name;
                customer.Address = customerViewModel.Address;
                customer.Telephone = customerViewModel.Telephone;
                customer.Email = customerViewModel.Email;
                customer.HomePage = customerViewModel.HomePage;
                customer.IndustrialClassification = customerViewModel.IndustrialClassification;
                customer.Subsidiaries = customerViewModel.Subsidiaries;
                customer.CVR = customerViewModel.CVR;
                customer.Responsible = customerViewModel.Responsible;
                customer.ResponsibleEmail = customerViewModel.ResponsibleEmail;
                customer.ResponsibleTelephone = customerViewModel.ResponsibleTelephone;
                customer.IsPBSPayment = customerViewModel.IsPBSPayment;
                if (customerViewModel.IsPBSPayment)
                {
                    customer.RegistrationNumber = customerViewModel.RegistrationNumber;
                    customer.AccountNumber = customerViewModel.AccountNumber;
                }

                customer.MultiannualAgreement = customerViewModel.MultiannualAgreement;
                customer.Forwards = customerViewModel.Forwards;
                customer.Activities = customerViewModel.Activities;

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

            CreateCustomerViewModel customerViewModel = new CreateCustomerViewModel();
            customerViewModel.Name = customer.Name;
            customerViewModel.Address = customer.Address;
            customerViewModel.Telephone = customer.Telephone;
            customerViewModel.Email = customer.Email;
            customerViewModel.HomePage = customer.HomePage;
            customerViewModel.IndustrialClassification = customer.IndustrialClassification;
            customerViewModel.Subsidiaries = customer.Subsidiaries;
            customerViewModel.CVR = customer.CVR;
            customerViewModel.Responsible = customer.Responsible;
            customerViewModel.ResponsibleEmail = customer.ResponsibleEmail;
            customerViewModel.ResponsibleTelephone = customer.ResponsibleTelephone;
            customerViewModel.IsPBSPayment = customer.IsPBSPayment;
            if (customerViewModel.IsPBSPayment)
            {
                customerViewModel.RegistrationNumber = customer.RegistrationNumber;
                customerViewModel.AccountNumber = customer.AccountNumber;
            }

            customerViewModel.MultiannualAgreement = customer.MultiannualAgreement;
            customerViewModel.Forwards = customer.Forwards;
            customerViewModel.Activities = customer.Activities;

            return View(customerViewModel);
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