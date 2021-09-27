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

        public Task AddBeer(BeerModel beer)
        {
            var sql = @"insert into dbo.Beer (Name, ABV, RateBeerLink, BeerStyleId, BreweryId, BeerClassId)
                        values (@Name, @ABV, @RateBeerLink, @BeerStyleId, @BreweryId, @BeerClassId)";

            return _db.SaveData(sql, beer);
        }

        public Task<BeerModel> GetBeer(int id)
        {
            var sql = @"select * from dbo.Beer where BeerId = @beerId";
            return _db.LoadSingle<BeerModel, dynamic>(sql, new { beerId = id });
        }

        public Task DeleteBeer(BeerModel beer)
        {
            var sql = @"delete from dbo.Beer where BeerId = @BeerId";
            return _db.DeleteData<BeerModel>(sql, beer);             
        }
    }
}
