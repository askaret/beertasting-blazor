using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLibrary.Models
{
    public class BreweryModel
    {
        public int BreweryId { get; set; }
        public string Name { get; set; }
        public string Country { get; set; }
        public string Website { get; set; }
    }
}
