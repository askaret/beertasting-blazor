using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLibrary.Models
{
    public class TastingModel
    {
        public int TastingId {  get; set; }
        public string Name {  get; set; }
        public string Description {  get; set; }
        public bool IsActive {  get; set; }
        public bool IsBlind {  get; set; }
        public DateTime TastingDate {  get; set; }
    }
}
