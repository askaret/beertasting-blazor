using DataAccessLibrary.Models;

namespace BlazorTest.ViewModels
{
    public class TastingBeerViewModel
    {
        public int TastingBeerId { get; set; }
        public int TastingId { get; set; }
        public int SortOrder { get; set; }
        public BeerModel? BeerModel { get; set; }
    }
}
