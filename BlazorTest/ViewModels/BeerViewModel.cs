using DataAccessLibrary.Models;
using System.ComponentModel.DataAnnotations;

namespace BlazorTest.ViewModels
{
    public class BeerViewModel
    {
        public int BeerId { get; set; }
        [Required(ErrorMessage = "Beer style is required.")]
        [Range(1, int.MaxValue, ErrorMessage = "Beer style is required.")]
        public int BeerStyleId { get; set; }

        [Required(ErrorMessage = "Brewery is required.")]
        [Range(1, int.MaxValue, ErrorMessage = "Brewery is required.")]
        public int BreweryId { get; set; }

        [Required(ErrorMessage = "Beer class is required.")]
        [Range(1, int.MaxValue, ErrorMessage = "Beer class is required.")]
        public int BeerClassId { get; set; }
                
        public BeerstyleModel? BeerStyleModel {  get; set; }
        
        public BeerclassModel? BeerclassModel { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "Name is too long")]
        [MinLength(1, ErrorMessage = "Name is too short")]
        public string Name { get; set; }

        [Required]
        [Range(0.0, 25.0, ErrorMessage = "ABV must be positive and less than 25")]
        public float ABV { get; set; }
        public string? RateBeerLink { get; set; }
    }
}
