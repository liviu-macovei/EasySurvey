using EasySurvey.Web.ViewModels.Customer;
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

        public List<SelectCustomerViewModel> Customers { get; set; }
    }
}
