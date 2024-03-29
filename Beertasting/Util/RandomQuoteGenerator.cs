﻿using DataAccessLibrary.Models;

namespace Beertasting.Util
{
    public class RandomQuoteGenerator
    {   
        public List<VoteModel> votes = new List<VoteModel>();
        private IEnumerable<TasterModel> tasters;
        private IEnumerable<BeerModel> beers;
        private bool _isBlindTasting = false;
        private Random randomGenerator = new Random();
        private List<TastingBeerModel> tastingBeers;

        public RandomQuoteGenerator(IEnumerable<TasterModel> tasters, IEnumerable<BeerModel> beers, List<TastingBeerModel> tastingBeers, bool isBlindTasting)
        {
            this.tasters = tasters;
            this.beers = beers;
            this.tastingBeers = tastingBeers;
            _isBlindTasting = isBlindTasting;
        }

        private string getNegativeTaster(int beerId)
        {
            var beerVotes = votes.Where(v => v.BeerId == beerId).OrderBy(bv => 2 * bv.Taste + bv.Appearance + bv.Overall).ToArray();
            return tasters.Single(t => t.TasterId == beerVotes.FirstOrDefault()?.TasterId)?.DisplayName ?? "";
        }

        private string getPositiveTaster(int beerId)
        {
            var beerVotes = votes.Where(v => v.BeerId == beerId).OrderByDescending(bv => 2 * bv.Taste + bv.Appearance + bv.Overall).ToArray();
            return tasters.Single(t => t.TasterId == beerVotes.FirstOrDefault()?.TasterId)?.DisplayName ?? "";
        }

        private string getAgreeTaster()
        {
            var averages = votes.GroupBy(v => v.BeerId).Select(v => (v.Key, v.Average(b => b.Final)));
            var diff = votes.GroupBy(v => v.TasterId).Select(tv => (tv.Key, Math.Sqrt(tv.Sum(s => s.Final * s.Final - averages.SingleOrDefault(a => a.Key == s.BeerId).Item2 * averages.SingleOrDefault(a => a.Key == s.BeerId).Item2))));
            diff = diff.Where(d => !double.IsNaN(d.Item2)).OrderBy(d => d.Item2);

            return tasters.SingleOrDefault(t => t.TasterId == diff.FirstOrDefault().Key)?.DisplayName ?? "Random goat nugget";
        }

        private string getNegativeQuote()
        {
            var r = randomGenerator.Next(0, QuoteTemplates.NegativeQuotes.Length);
            var templateQuote = QuoteTemplates.NegativeQuotes[r];
            return templateQuote;
        }

        private string getPositiveQuote()
        {
            var r = randomGenerator.Next(0, QuoteTemplates.PositiveQuotes.Length);
            var templateQuote = QuoteTemplates.PositiveQuotes[r];
            return templateQuote;
        }

        private string getAgreeQuote()
        {
            var r = randomGenerator.Next(0, QuoteTemplates.AgreeQuotes.Length);
            var templateQuote = QuoteTemplates.AgreeQuotes[r];
            return templateQuote;
        }

        public string GetQuote()
        {
            var candidateBeers = votes.GroupBy(v => v.BeerId).Where(b => b.Count() > votes.Select(v => v.TasterId).Distinct().Count() / 2);
            if (!candidateBeers.Any())
                return String.Empty;

            var beerVotes = candidateBeers.ElementAt(randomGenerator.Next(0, candidateBeers.Count()));
            var beer = beers.Single(b => b.BeerId == beerVotes.Key);
            
            string quote = "";
            string taster = "";
            switch (randomGenerator.Next(0, 3))
            {
                case 0:
                    quote = getNegativeQuote();
                    taster = getNegativeTaster(beer.BeerId);
                    break;
                case 1:
                    quote = getPositiveQuote();
                    taster = getPositiveTaster(beer.BeerId);
                    break;
                case 2:
                    quote = getAgreeQuote();
                    taster = getAgreeTaster();
                    break;
                default:
                    quote = "";
                    break;
            }

            if(_isBlindTasting)
            {
                return string.Format(quote, taster, $"Beer #{tastingBeers.First(x => x.BeerId == beer.BeerId).SortOrder}");
            }
            
            return string.Format(quote, taster, beer.Name); 
        }
    }
}
