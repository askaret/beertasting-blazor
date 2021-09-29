namespace DataAccessLibrary.Models
{
    public class BreweryModel
    {   
        public int BreweryId { get; set; }
        public string Name { get; set; } = string.Empty;
        public string Country { get; set; } = string.Empty;
        public string Website { get; set; } = string.Empty;
    }
}
