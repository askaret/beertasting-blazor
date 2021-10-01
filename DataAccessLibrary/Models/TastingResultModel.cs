using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLibrary.Models
{
    public class TastingResultModel
    {
        public int TastingBeerResultId {  get; set; }
        public int TastingId {  get; set; }
        public int BeerId {  get; set; }
        public double ScoreTaste {  get; set; }
        public double ScoreAppearance {  get; set; }
        public double ScoreOverall {  get; set; }
        public double ScoreFinal {  get; set; }
        
    }
}
