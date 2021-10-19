using DataAccessLibrary;
using DataAccessLibrary.Models;

namespace Beertasting.Util
{
    public static class TastingUtil
    {   
        public static async Task CalculateTasting(IBeertastingRepository database, TastingModel tasting)
        {
            await database.RemoveTastingResults(tasting.TastingId);
            var resultTasks = new List<Task>();
            var tastingVotes = await database.GetVotes(tasting.TastingId);
            
            foreach (var beerVotes in tastingVotes.GroupBy(tv => tv.BeerId))
            {
                var result = new TastingResultModel() { BeerId = beerVotes.Key, TastingId = tasting.TastingId };
                result.CalculateResults(beerVotes.ToArray());
                resultTasks.Add(database.AddTastingResults(result));
            }

            await Task.WhenAll(resultTasks);
        }
    }
}
