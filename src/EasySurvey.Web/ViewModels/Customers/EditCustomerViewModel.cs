using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EasySurvey.Web.ViewModels.Customers
{
    public class EditCustomerViewModel : IValidatableObject
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

        [Required(ErrorMessage = "You must provide the email address.")]
        [EmailAddress(ErrorMessage = "E-mail is not valid")]
        [Display(Name = "Email")]
        public string Email { get; set; }

        [Url(ErrorMessage = "Hjemmeside url is not valid")]
        [Display(Name = "Hjemmeside")]
        public string HomePage { get; set; }

        [StringLength(1024, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 1)]
        [Display(Name = "Datterselskaber")]
        public string Subsidiaries { get; set; }

        [StringLength(1024, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 1)]
        [Display(Name = "Selskabsform")]
        public string IndustrialClassification { get; set; }


        [StringLength(8, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 1)]
        [Display(Name = "CVR")]
        public string CVR { get; set; }

        [Required(ErrorMessage = "Forsikringsansvarlig must be provided.")]
        [StringLength(1024, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 1)]
        [Display(Name = "Forsikringsansvarlig")]
        public string Responsible { get; set; }

        [Required(ErrorMessage = "Forsikringsansvarlig - Mail must be provided.")]
        [EmailAddress(ErrorMessage = "E-mail is not valid")]
        [Display(Name = "-  Mail")]
        public string ResponsibleEmail { get; set; }

        [Required(ErrorMessage = "Forsikringsansvarlig - Telefon must be provided.")]
        [Phone(ErrorMessage = "Phone is not valid")]
        //[RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid Phone number")]
        [Display(Name = "-  Telefon")]
        public string ResponsibleTelephone { get; set; }

        [Display(Name = "Ønskes betaling via PBS")]
        public bool IsPBSPayment { get; set; }

        [StringLength(20, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 1)]
        [Display(Name = "Reg")]
        public string RegistrationNumber { get; set; }

        [StringLength(20, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 1)]
        [Display(Name = "kontonr.")]
        public string AccountNumber { get; set; }

        [RegularExpression(@"[1,3,5]{1}", ErrorMessage = "Not a valid Flerårig aftale. Valid values are 1,3 and 5.")]
        [Display(Name = "Flerårig aftale")]
        public int MultiannualAgreement { get; set; }

        [RegularExpression(@"[1,2,4]{1}", ErrorMessage = "Not a valid Flerårig aftale. Valid values are 1,2,4 and 12.")]
        [Display(Name = "Terminer")]
        public int Forwards { get; set; }

        [StringLength(10240, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 1)]
        [Display(Name = "Beskrivelse af virksomhedens aktiviteter")]
        public string Activities { get; set; }

        public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
        {
            if (IsPBSPayment && string.IsNullOrEmpty(RegistrationNumber))
            {
                yield return new ValidationResult("You must provide the RegistrationNumber.");
            }

            if (IsPBSPayment && string.IsNullOrEmpty(AccountNumber))
            {
                yield return new ValidationResult("You must provide the AccountNumber.");
            }
        }
    }
}
