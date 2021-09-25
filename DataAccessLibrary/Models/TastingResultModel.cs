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
        public int BeerClassId {  get; set; }
        public string BeerName {  get; set; }
        public string BreweryName {  get; set; }
        public string BeerStyle {  get; set; }
        public float Abv {  get; set; }
        public string BreweryUrl {  get; set; }
        public string RateBeerUrl {  get; set; }
        public float ScoreTaste {  get; set; }
        public float ScoreAppearance {  get; set; }
        public float ScoreOverall {  get; set; }
        public float ScoreFinal {  get; set; }
        public string BeerClassName {  get; set; }
    }
}
