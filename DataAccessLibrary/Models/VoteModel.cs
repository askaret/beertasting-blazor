using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLibrary.Models
{
    public class VoteModel
    {
        public int? VoteId { get; set; } = null;
        public double Final => (2 * Taste + Appearance + Overall) / 4;
        public int BeerId { get; set; }
        public int TastingId { get;set; }
        public int TasterId {  get; set; }
        public double Taste {  get; set; }
        public double Appearance {  get; set; }
        public double Overall {  get; set; }
        public string Note {  get; set; }
    }
}
