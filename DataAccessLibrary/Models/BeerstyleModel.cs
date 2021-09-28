using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLibrary.Models
{
    public class BeerstyleModel
    {
        public int BeerStyleId { get; set; }
        public string Name { get; set; } = string.Empty;
        public string ValueExpression => Name;
    }
}
