using DataAccessLibrary.Models;

namespace DataAccessLibrary
{
    public interface IBeertastingRepository
    {
        Task AddBeer(BeerModel beer);
        Task<BeerModel> GetBeer(int id);
        Task<List<BeerModel>> GetBeers();
        Task<List<BreweryModel>> GetBreweries();
        Task<List<BeerclassModel>> GetBeerclasses();
        Task<List<BeerstyleModel>> GetBeerstyles();
        Task<List<TastingModel>> GetTastings();
        Task<List<TastingResultModel>> GetTastingResults(int tastingId);
        Task<int> GetParticipantCount(int tastingId);
    }
}