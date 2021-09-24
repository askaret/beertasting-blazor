using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLibrary.Models
{
    public class BeerModel
    {
        public int BeerId { get; set; }
        public int BeerStyleId { get; set; }
        public int BreweryId { get; set; }
        public int BeerClassId { get; set; }
        public string Name { get; set; }
        public float ABV { get; set; }
        public string? RateBeerLink { get; set; }
        public BeerstyleModel? BeerStyleModel { get; set; }
        public BeerclassModel? BeerclassModel { get; set; }

        public BreweryModel? BreweryModel { get; set;} 
        
    }
}
