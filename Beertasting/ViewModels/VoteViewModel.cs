using DataAccessLibrary;
using DataAccessLibrary.Models;

namespace Beertasting.ViewModels
{
    public class VoteViewModel
    {
        private int? _voteId;
        private int _beerId;
        private int _tastingId;
        private int _tasterId;
        private double _tasteScore;
        private double _appearanceScore;
        private double _overallScore;
        private string _note;

        public double Taste
        {
            get
            {
                return _tasteScore;
            }
            set
            {
                if(_tasteScore != value)
                {
                    _tasteScore = value;
                    saveToDatabase();
                }                
            }
        }
        public double Appearance
        {
            get
            {
                return _appearanceScore;
            }
            set
            {
                if(_appearanceScore != value)
                {
                    _appearanceScore = value;
                    saveToDatabase();
                }                
            }
        }
        public double Overall
        {
            get
            {
                return _overallScore;
            }
            set
            {
                if(value != _overallScore)
                {
                    _overallScore = value;
                    saveToDatabase();
                }                
            }
        }
        public string Note
        {
            get
            {
                return _note;
            }
            set
            {
                if(!_note.Equals(value, StringComparison.InvariantCulture))
                {
                    _note = value;
                    saveToDatabase();
                }                
            }
        }

        private readonly IBeertastingRepository _db;
        public VoteViewModel(VoteModel vote, IBeertastingRepository db)
        {
            _voteId = vote.VoteId;
            _beerId = vote.BeerId;
            _tasterId = vote.TasterId;
            _tastingId = vote.TastingId;
            _note = vote.Note;
            _appearanceScore = vote.Appearance;
            _tasteScore = vote.Taste;
            _overallScore = vote.Overall;
            _db = db;
        }

        private async void saveToDatabase()
        {
            var vote = new VoteModel()
            {
                VoteId = _voteId,
                BeerId = _beerId,
                TasterId = _tasterId,
                TastingId = _tastingId,
                Appearance = _appearanceScore,
                Taste = _tasteScore,
                Overall = _overallScore,
                Note = _note
            };

            if(_voteId == null)
            {
                await _db.AddVote(vote);
                var savedVote = await _db.GetVote(_tasterId, _beerId, _tastingId);

                _voteId = savedVote.VoteId;
            }
        }
    }
}
