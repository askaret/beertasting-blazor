using DataAccessLibrary.Models;
using System.ComponentModel.DataAnnotations;

namespace BlazorTest.ViewModels
{
    public class BeerViewModel
    {
		public BeerViewModel()
		{
            Name = string.Empty;
		}

        public BeerViewModel(BeerModel beer)
		{
            BeerId = beer.BeerId;
            BeerStyleId = beer.BeerStyleId;
            BreweryId = beer.BreweryId;
            BeerClassId = beer.BeerClassId;
            Name = beer.Name;
            ABV = beer.ABV;
            RateBeerLink = beer.RateBeerLink;
		}

        public BeerModel ToBeerModel()
		{
            return new BeerModel()
            {
                BeerId = BeerId,
                BeerStyleId = BeerStyleId,
                BreweryId = BreweryId,
                BeerClassId = BeerClassId,
                Name = Name,
                ABV = ABV,
                RateBeerLink = RateBeerLink
            };
		}

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
