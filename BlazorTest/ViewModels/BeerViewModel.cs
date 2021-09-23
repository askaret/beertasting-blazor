using DataAccessLibrary.Models;
using System.ComponentModel.DataAnnotations;

namespace BlazorTest.ViewModels
{
    public class BeerViewModel
    {
        public int BeerId { get; set; }
        public int BeerStyleId { get; set; }
        public int BreweryId { get; set; }
        public int BeerClassId { get; set; }

        public BeerstyleModel? BeerStyleModel {  get; set; }
        public BeerclassModel? BeerclassModel { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "Name is too long")]
        [MinLength(1, ErrorMessage = "Name is too short")]
        public string Name { get; set; }

        [Required]
        public float ABV { get; set; }
        public string? RateBeerLink { get; set; }
    }
}
