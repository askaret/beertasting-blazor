using System.ComponentModel.DataAnnotations;

namespace DataAccessLibrary.Models
{
    public class TasterModel
    {
        public int TasterId { get; set; }
        [Required(ErrorMessage ="Display name is required")] 
        public string DisplayName { get; set; }
        public string EmailAddress { get; set; }
        public bool IsAdmin { get; set; }
    }
}
