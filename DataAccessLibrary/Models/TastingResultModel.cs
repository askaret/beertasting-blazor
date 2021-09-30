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
        public Double ScoreTaste {  get; set; }
        public Double ScoreAppearance {  get; set; }
        public Double ScoreOverall {  get; set; }
        public Double ScoreFinal {  get; set; }
        
    }
}
