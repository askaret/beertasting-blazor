namespace DataAccessLibrary.Models
{
    public class LiveTastingInfoModel
    {
        public double Taste { get; set; }
        public double Appearance { get; set; }
        public double Overall { get; set; }
        public int VoteCount { get; set; }
        public int NoteCount { get; set; }        
    }
}
