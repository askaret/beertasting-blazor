using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLibrary.Models
{
	public class ChatLogModel
	{
        public string DisplayName { get; set; }
        public DateTime Timestamp { get; set; }
        public string Note { get; set; }
        public int SortOrder { get; set; }
    }
}
