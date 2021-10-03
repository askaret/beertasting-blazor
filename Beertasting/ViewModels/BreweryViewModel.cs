using DataAccessLibrary.Models;
using System.ComponentModel.DataAnnotations;

namespace Beertasting.ViewModels
{
    public class BreweryViewModel
    {
        public int BreweryId { get; set; }

        [Required(ErrorMessage = "Name is required.")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Country is required.")] 
        public string Country { get; set; }
        [Required(ErrorMessage = "Website is required.")]
        public string Website { get; set; }

        public BreweryViewModel()
        {
            Name = string.Empty;
            Country = string.Empty;
            Website = string.Empty; 
        }

        public BreweryViewModel(BreweryModel model)
        {
            BreweryId = model.BreweryId;
            Name = model.Name;
            Country = model.Country; 
            Website = model.Website;
        }

        public BreweryModel ToBreweryModel()
        {
            return new BreweryModel()
            {
                BreweryId = BreweryId,
                Name = Name,
                Country = Country,
                Website = Website
            };
        }
    }
}
