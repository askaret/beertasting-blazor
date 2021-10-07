using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLibrary.Models
{
    public class TasterBeerModelVotes
    {
        public int VoteId { get; set; }
        public int BeerId { get; set; }
        public int TastingId { get; set; }
        public int TasterId { get; set; }
        public string BeerName { get; set; }
        public string BreweryName { get; set; }
        public string RateBeerLink {  get; set; }
        public string Country { get; set; }
        public int SortOrder { get; set; }
        public float Taste { get; set; }
        public float ABV { get; set; }
        public float Appearance { get; set; }
        public float Overall { get; set; }
        public float Score { get; set; }
    }
}
