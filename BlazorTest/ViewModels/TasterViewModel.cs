using DataAccessLibrary.Models;
using System.ComponentModel.DataAnnotations;

namespace BlazorTest.ViewModels
{
    public class TasterViewModel
    {
        public int TasterId { get; set; }
        [Required(ErrorMessage = "Display name is required")]
        public string DisplayName { get; set; }
        [Required(ErrorMessage = "E-mail address is required")] 
        public string EmailAddress { get; set; }
        public bool IsAdmin { get; set; }

        public TasterViewModel()
        {

        }

        public TasterViewModel(TasterModel tm)
        {
            TasterId = tm.TasterId;
            DisplayName = tm.DisplayName;
            EmailAddress = tm.EmailAddress; 
            IsAdmin = tm.IsAdmin;
        }

        public TasterModel ToTasterModel()
        {
            return new TasterModel()
            {
                DisplayName = DisplayName,
                EmailAddress = EmailAddress,
                IsAdmin = IsAdmin, 
                TasterId = TasterId
            };
        }

    }
}
