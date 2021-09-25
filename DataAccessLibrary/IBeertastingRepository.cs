using DataAccessLibrary.Models;

namespace DataAccessLibrary
{
    public interface IBeertastingRepository
    {
        Task AddBeer(BeerModel beer);
        Task AddTasting(TastingModel tasting);
        Task EditTasting(TastingModel tasting);
        Task<BeerModel> GetBeer(int id);
        Task<List<BeerModel>> GetBeers();
        Task<List<BeerModel>> GetBeersByTasting(int id);
        Task<List<BreweryModel>> GetBreweries();
        Task<List<BeerclassModel>> GetBeerclasses();
        Task<List<BeerstyleModel>> GetBeerstyles();
        Task<List<TastingModel>> GetTastings();
        Task<TastingModel> GetTasting(int id);
    }
}