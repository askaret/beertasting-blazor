namespace Beertasting.Util
{
    public static class QuoteTemplates
    {
        public static readonly string[] BeerNames = { "Clausthaler", "Munkholm", "Nordlandspils Double Ice", "Husholdningssaft", "Folkøl", "Budweiser", "Ultralight Vegan Oatbeer" };
        public static readonly string[] PositiveQuotes = { @"{0} and {1}, please get a room!", @"Hey, {0}! Share some {1} with the others!" };
        public static readonly string[] NegativeQuotes = { @"{0}, need some help with that {1}?", @"{0} is not loving {1}." };
        public static readonly string[] AgreeQuotes = { @"{0} is perfectly average...", @"I think {0} is peeking your answers", "Nothing wrong with being average, {0}!" };
        public static readonly string[] DisagreeQuotes = { @"{0} does not approve.", @"{0} has some strange opinions when it comes to beer." };
    }
}
