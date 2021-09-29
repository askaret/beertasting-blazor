using DataAccessLibrary.Models;

namespace DataAccessLibrary
{
    public interface IBeertastingRepository
    {
        Task AddUser(UserModel user);
        Task<List<UserModel>> GetUsers();
        Task AddBeer(BeerModel beer);
        Task UpdateBeer(BeerModel beer);
        Task DeleteBeer(BeerModel beer);
        Task AddBrewery(BreweryModel brewery);
        Task UpdateBrewery(BreweryModel brewery);
        Task DeleteBrewery(BreweryModel brewery);
        Task<BeerModel> GetBeer(int id);
        Task<BreweryModel> GetBrewery(int id);
        Task<List<BeerModel>> GetBeers();
        Task<List<BreweryModel>> GetBreweries();
        Task<List<BeerclassModel>> GetBeerclasses();
        Task<List<BeerstyleModel>> GetBeerstyles();
        Task<List<TastingModel>> GetTastings();
        Task<List<TastingResultModel>> GetTastingResults(int tastingId);
        Task<int> GetParticipantCount(int tastingId);
    }
}