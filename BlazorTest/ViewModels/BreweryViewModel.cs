using System.ComponentModel.DataAnnotations;

namespace BlazorTest.ViewModels
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
    }
}
