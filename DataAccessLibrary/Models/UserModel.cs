using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLibrary.Models
{
    public class UserModel
    {
        public int UserId {  get; set; }
        public string DisplayName {  get; set; }
        public string Email {  get; set; }
        public bool IsAdmin {  get; set; }
    }
}
