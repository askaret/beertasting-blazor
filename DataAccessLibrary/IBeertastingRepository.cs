using DataAccessLibrary.Models;

namespace DataAccessLibrary
{
    public interface IBeertastingRepository
    {
        Task AddBeer(BeerModel beer);
        Task<List<BeerModel>> GetBeers();
        Task<List<BreweryModel>> GetBreweries();
    }
}