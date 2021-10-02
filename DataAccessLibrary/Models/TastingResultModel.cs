using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLibrary.Models
{
    public class TastingResultModel
    {
        public int TastingBeerResultId { get; set; }
        public int TastingId { get; set; }
        public int BeerId { get; set; }
        public double ScoreTaste { get; set; }
        public double ScoreAppearance { get; set; }
        public double ScoreOverall { get; set; }
        public double ScoreFinal { get; set; }

        public void CalculateResults(IEnumerable<VoteModel> votes)
        {
            var filteredVotes = votes.Where(v => v.TastingId == TastingId && v.BeerId == BeerId).ToArray();

            ScoreTaste = Math.Round(filteredVotes.Select(v => v.Taste).Average());
            ScoreAppearance = Math.Round(filteredVotes.Select(v => v.Taste).Average());
            ScoreOverall = Math.Round(filteredVotes.Select(v => v.Overall).Average());
            ScoreFinal = Math.Round(((2 * ScoreTaste) + ScoreAppearance + ScoreOverall) / 4);
        }
    }
}
