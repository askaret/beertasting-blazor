using DataAccessLibrary.Models;

namespace DataAccessLibrary
{
    public class BeertastingRepository : IBeertastingRepository
    {
        private readonly ISqlDataAccess _db;

        public BeertastingRepository(ISqlDataAccess db)
        {
            _db = db;
        }

        public Task<List<BeerstyleModel>> GetBeerstyles()
        {
            var query = "select * from dbo.Beerstyle";
            return _db.LoadData<BeerstyleModel, dynamic>(query, new { });
        }

        public Task<List<BeerclassModel>> GetBeerclasses()
        {
            var query = "select * from dbo.Beerclass";
            return _db.LoadData<BeerclassModel, dynamic>(query, new { });
        }

        public Task<List<BeerModel>> GetBeers()
        {
            var query = "select * from dbo.Beer";

            return _db.LoadData<BeerModel, dynamic>(query, new { });
        }

        public Task<List<BreweryModel>> GetBreweries()
        {
            var query = "select * from dbo.Brewery";
            return _db.LoadData<BreweryModel, dynamic>(query, new { });
        }

        public Task<List<TastingResultModel>> GetTastingResults()
        {
            var sql = @"select TastingBeerResultId, TastingId, BeerId, ScoreTaste, ScoreAppearance, ScoreOverall, ScoreFinal from dbo.TastingResult";
            return _db.LoadData<TastingResultModel, dynamic>(sql, new {});
        }

        public Task AddBeer(BeerModel beer)
        {
            var sql = @"insert into dbo.Beer (Name, ABV, RateBeerLink, BeerStyleId, BreweryId, BeerClassId)
                        values (@Name, @ABV, @RateBeerLink, @BeerStyleId, @BreweryId, @BeerClassId)";

            return _db.SaveData(sql, beer);
        }

        public Task AddTasting(TastingModel tasting)
        {
            var sql = @"insert into dbo.Tasting (Name, Description, IsActive, IsBlind, TastingDate) values (@Name, @Description, @IsActive, @IsBlind, @TastingDate)";

            return _db.SaveData(sql, tasting);
        }

        public Task AddTastingBeer(int tastingId, int beerId, int sortOrder)
        {
            var sql = @"insert into dbo.TastingBeer (TastingId, BeerId, SortOrder) values (@tastingId, @beerId, @sortOrder)";

            return _db.SaveData(sql, new { tastingId = tastingId, beerId = beerId, sortOrder = sortOrder });
        }

        public Task UpdateTasting(TastingModel tasting)
        {
            var sql = @"update dbo.Tasting set Name = @Name, Description = @Description, IsActive = @IsActive, IsBlind = @IsBlind, TastingDate = @TastingDate where TastingId = @TastingId";

            return _db.SaveData(sql, tasting);
        }

        public Task UpdateTastingBeer(TastingBeerModel tastingBeer)
        {
            var sql = @"update dbo.TastingBeer set TastingId = @TastingId, BeerId = @BeerId, SortOrder = @SortOrder where TastingBeerId = @TastingBeerId";

            return _db.SaveData(sql, tastingBeer);
        }

        public Task RemoveTastingBeer(TastingBeerModel tastingBeer)
        {
            var sql = @"delete from dbo.TastingBeer where TastingBeerId = @tastingBeerId";
            return _db.SaveData(sql, new { tastingBeerId = tastingBeer.TastingBeerId });
        }
        
        public Task RemoveVotes(int tastingId, int beerId)
        {
            var sql = @"delete from dbo.Vote where TastingId = @tastingId and BeerId = @beerId";

            return _db.SaveData(sql, new { tastingId = tastingId, beerId = beerId });
        }
        
        public Task AddTastingResults(TastingResultModel tastingResult)
        {
            var sql = @"insert into dbo.TastingResult (TastingId, BeerId, ScoreTaste, ScoreAppearance, ScoreOverall, ScoreFinal) values (@TastingId, @BeerId, @ScoreTaste, @ScoreAppearance, @ScoreOverall, @ScoreFinal)";
            return _db.SaveData(sql, tastingResult);
        }

        public Task RemoveTastingResult(int tastingId, int beerId)
        {
            var sql = @"delete from dbo.TastingResult where TastingId = @tastingId and BeerId = @beerId";

            return _db.SaveData(sql, new { tastingId = tastingId, beerId = beerId });
        }

        public Task RemoveTastingResults(int tastingId)
        {
            var sql = @"delete from dbo.TastingResult where TastingId = @tastingId";

            return _db.SaveData(sql, new { tastingId = tastingId});
        }

        public Task<BeerModel> GetBeer(int id)
        {
            var sql = @"select * from dbo.Beer where BeerId = @beerId";
            return _db.LoadSingle<BeerModel, dynamic>(sql, new { beerId = id });
        }
        
        public Task<List<TastingModel>> GetTastings()
        {
            var sql = @"select * from dbo.Tasting";
            return _db.LoadData<TastingModel, dynamic>(sql, new { });
        }

        public Task<TastingModel> GetTasting(int id)
        {
            var sql = @"select * from dbo.Tasting where TastingId = @id";
            return _db.LoadSingle<TastingModel, dynamic>(sql, new { id });
        }

        public Task<List<TastingBeerModel>> GetTastingBeers(int id)
        {
            var sql = @"select * from dbo.TastingBeer where TastingId = @tastingId";
            return _db.LoadData<TastingBeerModel, dynamic>(sql, new { tastingId = id });
        }

        public Task DeleteBeer(BeerModel beer)
        {
            var sql = @"delete from dbo.Beer where BeerId = @BeerId";
            return _db.DeleteData<BeerModel>(sql, beer);
        }

        public Task UpdateBeer(BeerModel beer)
        {
            var sql = @"update dbo.Beer 
                        set     Name = @Name, 
                                ABV = @ABV, 
                                RateBeerLink = @RateBeerLink, 
                                BeerStyleId = @BeerStyleId, 
                                BreweryId = @BreweryId, 
                                BeerClassId = @BeerClassId
                        where   BeerId = @BeerId";

            return _db.SaveData(sql, beer);
        }

        public Task AddBrewery(BreweryModel brewery)
        {
            var sql = @"insert into dbo.Brewery 
                               (Name,Country, Website)
                        values (@Name, @Country, @Website)";

            return _db.SaveData(sql, brewery);
        }

        public Task UpdateBrewery(BreweryModel brewery)
        {
            var sql = @"update  dbo.Brewery 
                        set     Name = @Name,
                                Country = @Country, 
                                Website = @Website
                        where   BreweryId = @BreweryId";

            return _db.SaveData(sql, brewery);
        }

        public Task DeleteBrewery(BreweryModel brewery)
        {
            var sql = @"delete from dbo.Brewery where BreweryId = @BreweryId";
            return _db.DeleteData<BreweryModel>(sql, brewery);
        }

        public Task<BreweryModel> GetBrewery(int id)
        {
            var sql = @"select * from dbo.Brewery where BreweryId = @breweryId";
            return _db.LoadSingle<BreweryModel, dynamic>(sql, new { breweryId = id });
        }

        public Task AddTaster(TasterModel taster)
        {
            var sql = @"insert into dbo.Taster 
                               (EmailAddress, DisplayName, IsAdmin)
                        values (@EmailAddress, @DisplayName, @IsAdmin)";

            return _db.SaveData(sql, taster);
        }

        public Task UpdateTaster(TasterModel taster)
        {
            var sql = @"update  dbo.Taster 
                        set     EmailAddress = @EmailAddress,
                                DisplayName = @DisplayName, 
                                IsAdmin = @IsAdmin
                        where   TasterId = @TasterId";

            return _db.SaveData(sql, taster);
        }

        public Task DeleteTaster(TasterModel taster)
        {
            var sql = @"delete from dbo.Taster where TasterId = @TasterId";
            return _db.DeleteData<TasterModel>(sql, taster);
        }
        public Task<TasterModel> GetTaster(string emailAddress)
        {
            var sql = @"select * from dbo.Taster where EmailAddress = @email";
            return _db.LoadSingle<TasterModel, dynamic>(sql, new { email = emailAddress});
        }

        public Task<TasterModel> GetTaster(int id)
        {
            var sql = @"select * from dbo.Taster where TasterId = @tasterId";
            return _db.LoadSingle<TasterModel, dynamic>(sql, new { tasterId = id });
        }

        public Task<List<TasterModel>> GetTasters()
        {
            var query = "select * from dbo.Taster";
            return _db.LoadData<TasterModel, dynamic>(query, new { });
        }

        public Task<List<TastingModel>> GetTastingsForTaster(int tasterId)
        {
            var query = @"select *  from dbo.tasting 
                         where      TastingId in 
                                    (
                                        select distinct TastingId from dbo.vote where TasterId = @TasterId
                                    );";

            return _db.LoadData<TastingModel, dynamic>(query, new { TasterId = tasterId });
        }

        public Task<List<TasterBeerModelVotes>> GetTasterBeerVotes(int tasterId)
        {
            var query = @"
                             SELECT     TOP 10 
                                        b.Name as BeerName,
                                        b.ABV,
                                        br.Name as BreweryName,
                                        b.RateBeerLink,
                                        Taste,
                                        Appearance,
                                        Overall,
                                        ( taste + appearance + overall ) AS Score
                            FROM        dbo.vote v
                                   JOIN dbo.beer b
                                     ON b.beerid = v.beerid
                                   JOIN dbo.brewery br
                                     ON br.breweryid = b.breweryid
                            WHERE       tasterid = @TasterId
                            ORDER BY    overall DESC,
                                        taste DESC,
                                        appearance DESC";

            return _db.LoadData<TasterBeerModelVotes, dynamic>(query, new { TasterId = tasterId });
        }

        public Task<List<VoteModel>> GetVotes(int tastingId)
        {
            var sql = @"
                            SELECT  *
                              FROM  dbo.Vote
                             WHERE  TastingId = @TastingId";
            return _db.LoadData<VoteModel, dynamic>(sql, new { TastingId = tastingId });
        }

        public Task AddVote(VoteModel vote)
        {
            throw new NotImplementedException();
        }

        public Task UpdateVote(VoteModel vote)
        {
            var sql = @"    UPDATE  dbo.Vote
                               SET  Overall = @Overall,
                                    Taste = @Taste,
                                    Appearance = @Appearance,
                                    Note = @Note
                             WHERE  VoteId = @VoteId";

            return _db.SaveData(sql, vote);
        }

        public Task<VoteModel> GetVote(int tasterId, int beerId, int tastingId)
        {
            var sql = @"    SELECT  *
                              FROM  dbo.Vote
                             WHERE  TastingId = @TastingId
                               AND  TasterId = @TasterId
                               AND  BeerId = @BeerId";
            return _db.LoadSingle<VoteModel, dynamic>(sql, new { TastingId = tastingId, TasterId =  tasterId, BeerId = beerId});
        }
    }
}
