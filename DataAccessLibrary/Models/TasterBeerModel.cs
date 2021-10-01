using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/*
 SELECT     b.NAME as BeerName,
            br.NAME as BreweryName,
            b.ratebeerlink as RatebeerLink,
            Taste,
            Appearance,
            Overall,
            ( taste + appearance + overall ) AS Score
FROM        dbo.vote v
       JOIN dbo.beer b
         ON b.beerid = v.beerid
       JOIN dbo.brewery br
         ON br.breweryid = b.breweryid
WHERE       tasterid = @TasterId
ORDER BY    overall DESC,
            taste DESC,
            appearance DESC   
 */


namespace DataAccessLibrary.Models
{
    public class TasterBeerModelVotes
    {
        public string BeerName { get; set; }
        public string BreweryName { get; set; }
        public string RateBeerLink {  get; set; }
        public float Taste { get; set; }
        public float ABV { get; set; }
        public float Appearance { get; set; }
        public float Overall { get; set; }
        public float Score { get; set; }
    }
}
