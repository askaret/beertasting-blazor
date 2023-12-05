using DataAccessLibrary.Models;

namespace DataAccessLibrary
{
    public interface IBeertastingRepository
    {
        #region BeerModel
        Task AddBeer(BeerModel beer);
        Task UpdateBeer(BeerModel beer);
        Task DeleteBeer(BeerModel beer);
        Task<BeerModel> GetBeer(int id);
        Task<List<BeerModel>> GetBeers();
        #endregion

        #region TasterModel
        Task AddTaster(TasterModel taster);
        Task UpdateTaster(TasterModel taster);
        Task DeleteTaster(TasterModel taster);
        Task<TasterModel> GetTaster(int id);
        Task<TasterModel> GetTaster(string emailAddress);
        Task<List<TasterModel>> GetTasters();
        #endregion

        #region BreweryModel
        Task AddBrewery(BreweryModel brewery);
        Task UpdateBrewery(BreweryModel brewery);
        Task DeleteBrewery(BreweryModel brewery);
        Task<BreweryModel> GetBrewery(int id);
        Task<List<BreweryModel>> GetBreweries();
        #endregion

        #region TastingModel
        Task AddTasting(TastingModel tasting);
        Task UpdateTasting(TastingModel tasting);
        Task<List<TastingModel>> GetTastings();
        Task<TastingModel> GetTasting(int id);
        #endregion

        #region TastingBeerModel
        Task AddTastingBeer(int tastingId, int beerId, int sortOrder);
        Task UpdateTastingBeer(TastingBeerModel tastingBeer);
        Task RemoveTastingBeer(TastingBeerModel tastingBeer);
        Task<List<TastingBeerModel>> GetTastingBeers(int id, bool includeRelated = true);
        Task<List<TastingResultModel>> GetTastingResults();
        #endregion

        #region VoteModel
        Task AddVote(VoteModel vote);
        Task UpdateVote(VoteModel vote);
        Task<VoteModel> GetVote(int tasterId, int beerId, int tastingId);
        Task<List<VoteModel>> GetVotes(int tasterId, int tastingId);
        Task<List<VoteModel>> GetVotes(int tastingId);
        #endregion

        #region Other accessors
        Task RemoveVotes(int tastingId, int beerId);
        Task AddTastingResults(TastingResultModel tastingResults);
        Task RemoveTastingResult(int tastingId, int beerId);
        Task RemoveTastingResults(int tastingId);
        Task<List<BeerclassModel>> GetBeerclasses();
        Task<List<BeerstyleModel>> GetBeerstyles();
        Task<List<TastingModel>> GetTastingsForTaster(int tasterId);
        Task<List<TasterBeerVoteModel>> GetTasterBeerVotes(int tasterId);     
        Task<LiveTastingInfoModel> GetTastingLiveInfo(int tastingId);
        Task<List<NoteModel>> GetLatestNotesFromTasting(int tastingId);
		Task<List<ChatLogModel>> GetChatLogForTasting(int tastingId);
		Task<List<string>> GetChatParticipants(int tastingId);
		#endregion
	}
}