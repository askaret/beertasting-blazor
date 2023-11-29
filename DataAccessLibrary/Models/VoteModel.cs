
namespace DataAccessLibrary.Models
{
    public class VoteModel
    {
        public int? VoteId { get; set; } = null;
        public double Final => (2 * Taste + Appearance + Overall) / 4;
        public int BeerId { get; set; }
        public int TastingId { get;set; }
        public int TasterId {  get; set; }
        public int Taste {  get; set; }
        public int Appearance {  get; set; }
        public int Overall {  get; set; }
        public string Note {  get; set; }
        public DateTime? Created { get; set; } = null;
        public DateTime? LastModified { get; set; } = null;
    }
}
