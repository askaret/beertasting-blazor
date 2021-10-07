using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLibrary.Models
{
    public class TastingBeerModel
    {
        public int TastingBeerId { get; set; }
        public int TastingId { get; set; }
        public int BeerId { get; set; }
        public BeerModel? BeerModel {get ;set;}
        
        // This is only ever intended to be a single person's vote...
        public VoteModel? VoteModel { get; set; }
        public int SortOrder { get; set; }
        public bool IsDirty { get; set; }

    }
}
