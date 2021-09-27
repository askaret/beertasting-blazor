using DataAccessLibrary.Models;
using System.ComponentModel.DataAnnotations;

namespace BlazorTest.ViewModels
{
    public class TastingViewModel : IEquatable<TastingModel>
    {
        
        public int TastingId { get; set; }

        [Required(ErrorMessage = "Name is required")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Description is required")]
        public string Description { get; set; }
        public bool IsActive { get; set; }
        public bool IsBlind { get; set; }

        [Required(ErrorMessage = "Date is required")]
        public DateTime? TastingDate { get; set; }
        
        [Required(ErrorMessage = "Time is required")]
        public TimeSpan? TastingTime {  get; set; }

        public TastingViewModel()
        {
            TastingId = -1;
            Name = string.Empty;
            Description = string.Empty;
        }

        public TastingViewModel(TastingModel tasting)
        {
            TastingId = tasting.TastingId;
            Name = tasting.Name;
            Description = tasting.Description;
            IsActive = tasting.IsActive;
            IsBlind = tasting.IsBlind;
            TastingDate = tasting.TastingDate;
            TastingTime = new TimeSpan(tasting.TastingDate.Hour, tasting.TastingDate.Minute, tasting.TastingDate.Second);
        }

        public bool Equals(TastingModel? other)
        {
            if (TastingId == other.TastingId 
                && Name == other.Name 
                && Description == other.Description
                && IsActive == other.IsActive 
                && IsBlind == other.IsBlind
                && TastingDate.GetValueOrDefault().Date.Equals(other.TastingDate.Date)
                && TastingTime.Equals(new TimeSpan(other.TastingDate.Hour, other.TastingDate.Minute, other.TastingDate.Second)))
            {
                return true;
            }
            return false;
        }
    }
}
