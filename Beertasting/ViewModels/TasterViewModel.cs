using Beertasting.Util;
using DataAccessLibrary.Models;
using System.ComponentModel.DataAnnotations;
using System.Security.Cryptography;

namespace Beertasting.ViewModels
{
    public class TasterViewModel
    {
        public int TasterId { get; set; }
        [Required(ErrorMessage = "Display name is required")]
        public string DisplayName { get; set; }
        [Required(ErrorMessage = "E-mail address is required")] 
        public string EmailAddress { get; set; }
        public bool IsAdmin { get; set; }
        public string Photo { get; set; }
        public string JobTitle { get; set; }

        public string Checksum => $"{TasterId}{EmailAddress}{(IsAdmin ? "admin" : "notadmin")}{JobTitle}{DisplayName}".Hash();

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
                DisplayName = new(DisplayName.Take(18).ToArray()),
                EmailAddress = EmailAddress,
                IsAdmin = IsAdmin, 
                TasterId = TasterId
            };
        }

    }
}
