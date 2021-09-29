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

        public Task AddUser(UserModel user)
        {
            var sql = @"insert into dbo.Taster (EmailAddress, DisplayName, IsAdmin)
                        values (@Email,@DisplayName, @IsAdmin)";

            return _db.SaveData(sql, user);
        }

        public Task<List<UserModel>> GetUsers()
        {
            var sql = "select * from dbo.Taster";

            return _db.LoadData<UserModel, dynamic>(sql, new { });
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

        public Task EditTasting(TastingModel tasting)
        {
            var sql = @"update dbo.Tasting set Name = @Name, Description = @Description, IsActive = @IsActive, IsBlind = @IsBlind, TastingDate = @TastingDate where TastingId = @TastingId";

            return _db.SaveData(sql, tasting);
        }

        public Task EditTastingBeer(TastingBeerModel tastingBeer)
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
        
        public Task RemoveTastingResult(int tastingId, int beerId)
        {
            var sql = @"delete from dbo.TastingResult where TastingId = @tastingId and BeerId = @beerId";

            return _db.SaveData(sql, new { tastingId = tastingId, beerId = beerId });
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

        public Task<List<TastingResultModel>> GetTastingResults(int tastingId)
        {
            var sql = @"select * from dbo.TastingResult where TastingId = @id";
            return _db.LoadData<TastingResultModel, dynamic>(sql, new { id = tastingId });
        }

        public Task<int> GetParticipantCount(int tastingId)
        {
            var sql = @"select count(distinct TasterId) from dbo.Vote where TastingId = @id group by TastingId";
            return _db.LoadSingle<int, dynamic>(sql, new { id = tastingId });
        }
    }
}
