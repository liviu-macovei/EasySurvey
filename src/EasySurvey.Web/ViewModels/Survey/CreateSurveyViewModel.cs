using EasySurvey.Web.ViewModels.Customer;
using Microsoft.AspNet.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EasySurvey.Web.ViewModels.Survey
{
    public class CreateSurveyViewModel
    {
        public int Id { get; set; }

        public int CustomerId { get; set; }

        public IEnumerable<Common.Models.Customer> Customers { get; set; }

        //public IEnumerable<SelectListItem> Customers { get; set; }
    }
}
