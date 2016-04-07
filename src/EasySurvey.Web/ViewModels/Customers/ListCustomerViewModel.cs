using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EasySurvey.Web.ViewModels.Customer
{
    public class ListCustomerViewModel
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "You must provide the Firmanavn/ Forsikringstager.")]
        [StringLength(1024, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 1)]
        [Display(Name = "Firmanavn/ Forsikringstager")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Your must provide the Adresse.")]
        [StringLength(1024, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 1)]
        [Display(Name = "Adresse")]
        public string Address { get; set; }

        [Required(ErrorMessage = "Your must provide a Telephone")]
        [Display(Name = "Telephone")]
        [Phone(ErrorMessage = "Phone is not valid")]
        //[RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid Phone number")]
        public string Telephone { get; set; }

        [StringLength(8, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 1)]
        [Display(Name = "CVR")]
        public string CVR { get; set; }

        [Required(ErrorMessage = "Forsikringsansvarlig must be provided.")]
        [StringLength(1024, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 1)]
        [Display(Name = "Forsikringsansvarlig")]
        public string Responsible { get; set; }
    }
}
