using DataAccessLibrary.Models;

namespace BlazorTest.ViewModels
{
    public class BeerResultViewModel
    {
        public BeerModel BeerModel { get;set;}
        public List<TastingResultModel>? TastingResults {  get; set; }
        public Double AverageTaste => TastingResults is not null && TastingResults.Any() ? TastingResults.Average(tr => tr.ScoreTaste) : 0;
        public Double AverageAppearance => TastingResults is not null && TastingResults.Any() ? TastingResults.Average(tr => tr.ScoreAppearance) : 0;
        public Double AverageOverall => TastingResults is not null && TastingResults.Any() ? TastingResults.Average(tr => tr.ScoreOverall) : 0;
        public Double AverageFinal => TastingResults is not null && TastingResults.Any() ? TastingResults.Average(tr => tr.ScoreFinal) : 0;
    }
}
