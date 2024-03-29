﻿using DataAccessLibrary.Models;

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

        public Task<BeerstyleModel> GetBeerstyle(int id)
        {
            var query = "select * from dbo.Beerstyle where BeerstyleId = @beerstyleId";
            return _db.LoadSingle<BeerstyleModel, dynamic>(query, new { beerstyleId = id });
        }

        public Task<BeerclassModel> GetBeerclass(int id)
        {
            var query = "select * from dbo.Beerclass where BeerclassId = @beerclassId";
            return _db.LoadSingle<BeerclassModel, dynamic>(query, new { beerclassId = id });
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

        public async Task<List<TastingBeerModel>> GetTastingBeers(int id, bool includeRelated = true)
        {
            var sql = @"select * from dbo.TastingBeer where TastingId = @tastingId";
            var tastingBeerModels = await _db.LoadData<TastingBeerModel, dynamic>(sql, new { tastingId = id });

            if (includeRelated)
            {
                foreach (var tb in tastingBeerModels)
                {
                    tb.BeerModel = await GetBeer(tb.BeerId);
                    tb.BeerModel.BeerclassModel = await GetBeerclass(tb.BeerModel.BeerClassId);
                    tb.BeerModel.BeerStyleModel = await GetBeerstyle(tb.BeerModel.BeerStyleId);
                    tb.BeerModel.BreweryModel = await GetBrewery(tb.BeerModel.BreweryId);
                }
            }
            return tastingBeerModels;
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

        public Task<List<TasterBeerVoteModel>> GetTasterBeerVotes(int tasterId)
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

            return _db.LoadData<TasterBeerVoteModel, dynamic>(query, new { TasterId = tasterId });
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
            vote.Created = DateTime.Now;
            var sql = @"INSERT INTO dbo.Vote (BeerId, TastingId, TasterId, Taste, Appearance, Overall, Note, Created)
                                    VALUES   (@BeerId, @TastingId, @TasterId, @Taste, @Appearance, @Overall, @Note, @Created)";

            return _db.SaveData(sql, vote);
        }

        public Task UpdateVote(VoteModel vote)
        {
            vote.LastModified = DateTime.Now;
            var sql = @"    UPDATE  dbo.Vote
                               SET  Overall = @Overall,
                                    Taste = @Taste,
                                    Appearance = @Appearance,
                                    Note = @Note,
                                    LastModified = @LastModified
                             WHERE  VoteId = @VoteId";

            return _db.SaveData(sql, vote);
        }

        public Task<List<VoteModel>> GetVotes(int tasterId, int tastingId)
        {
            var sql = @"    SELECT  *
                              FROM  dbo.Vote
                             WHERE  TastingId = @TastingId
                               AND  TasterId = @TasterId";

            return _db.LoadData<VoteModel, dynamic>(sql, new { TastingId = tastingId, TasterId = tasterId});

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

        public Task<LiveTastingInfoModel> GetTastingLiveInfo(int tastingId)
        {
            var sql = @"select	ROUND(AVG(v.Taste),2) as Taste, 
		                        ROUND(AVG(v.Appearance),2) as Appearance, 
		                        ROUND(AVG(v.Overall), 2) as Overall,
		                        (select count(*) from dbo.vote v2 where v2.TastingId = @TastingId) as VoteCount,
		                        (select count(*) from dbo.vote v3 where LEN(v3.Note) > 0 and v3.TastingId = @TastingId) as NoteCount
                        from	Dbo.Vote v
                        where	v.TastingId = @TastingId;";

            return _db.LoadSingle<LiveTastingInfoModel, dynamic>(sql, new { TastingId = tastingId });
        }

        public Task<List<NoteModel>> GetLatestNotesFromTasting(int tastingId)
        {
            var sql = @"SELECT  TOP 10
                                t.DisplayName as Taster, v.Note
		                FROM    Dbo.Vote v
		                JOIN    dbo.Taster t on t.TasterId = v.TasterId
		                WHERE   LEN(v.Note) > 0 AND v.TastingId = @TastingId
                        ORDER BY v.LastModified desc";

            return _db.LoadData<NoteModel, dynamic>(sql, new { TastingId = tastingId });
        }

        public Task<List<ChatLogModel>> GetChatLogForTasting(int tastingId)
        {
            var sql = @";with
    Beers
    as
    (
        select t.TastingId, b.BeerId, tb.SortOrder
        from Tasting t
            inner join TastingBeer tb on t.TastingId = tb.TastingId
            inner join Beer b on tb.BeerId = b.BeerId
    )

select t.DisplayName
    , coalesce(v.LastModified, coalesce(v.Created, getdate())) as [Timestamp]
    , v.Note
    , b.SortOrder
from Vote v
    inner join Beers b on v.TastingId = b.TastingId and v.BeerId = b.BeerId
    inner join Taster t on v.TasterId = t.TasterId
where v.TastingId = @TastingId and v.Note is not null and v.Note <> ''
order by v.VoteId";

            return _db.LoadData<ChatLogModel, dynamic>(sql, new { TastingId = tastingId });
        }

        public Task<List<string>> GetChatParticipants(int tastingId)
        {
            var sql = @"select 
    case when t.IsAdmin = 1 then 
        '@' + t.DisplayName
        else
        t.DisplayName
        end as DisplayName
    from Taster t
    where t.TasterId in (Select TasterId from Vote where TastingId = @TastingId)
    order by t.IsAdmin desc, t.DisplayName";

            return _db.LoadData<string, dynamic>(sql, new { TastingId = tastingId });
        }
    }
}
