using DataAccessLibrary.Models;

namespace DataAccessLibrary
{
    public interface IBeertastingRepository
    {
        Task AddBeer(BeerModel beer);
        Task AddTasting(TastingModel tasting);
        Task AddTastingBeer(int tastingId, int beerId, int sortOrder);
        Task EditTasting(TastingModel tasting);
        Task EditTastingBeer(TastingBeerModel tastingBeer);
        Task RemoveTastingBeer(TastingBeerModel tastingBeer);
        Task RemoveVotes(int tastingId, int beerId);
        Task RemoveTastingResult(int tastingId, int beerId);
        Task UpdateBeer(BeerModel beer);
        Task DeleteBeer(BeerModel beer);
        Task<BeerModel> GetBeer(int id);
        Task<List<BeerModel>> GetBeers();
        Task<List<BreweryModel>> GetBreweries();
        Task<List<BeerclassModel>> GetBeerclasses();
        Task<List<BeerstyleModel>> GetBeerstyles();
        Task<List<TastingModel>> GetTastings();
        Task<TastingModel> GetTasting(int id);
        Task<List<TastingBeerModel>> GetTastingBeers(int id);
    }
}