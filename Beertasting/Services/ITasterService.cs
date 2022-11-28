using Beertasting.Util;
using Beertasting.ViewModels;
using DataAccessLibrary;
using DataAccessLibrary.Models;
using Microsoft.Extensions.Caching.Memory;
using Microsoft.Graph;
using Microsoft.Identity.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Beertasting.Services
{
    public interface ITasterService
    {
        public Task<TasterViewModel> GetTasterVM();
    }

    public class TasterService : ITasterService
    {
        private GraphServiceClient Client { get; }
        public MicrosoftIdentityConsentAndConditionalAccessHandler ConsentHandler { get; }
        public IMemoryCache MemoryCache { get; }
        private IBeertastingRepository BeertastingRepository { get; }
        public ILogger Logger { get; }

        public TasterService(GraphServiceClient client, MicrosoftIdentityConsentAndConditionalAccessHandler consentHandler, IMemoryCache memoryCache, IBeertastingRepository beertastingRepository, ILogger<TasterService> logger)
        {
            Client = client;
            ConsentHandler = consentHandler;
            MemoryCache = memoryCache;
            BeertastingRepository = beertastingRepository;
            Logger = logger;
        }

        public async Task<TasterViewModel> GetTasterVM()
        {
            try
            {
                var User = await Client.Me.Request().GetAsync();
                var UserPhoto = await GetPhoto();
                var taster = await BeertastingRepository.GetTaster(User.Mail);
                if (taster == null)
                {
                    // User is not initialized in database, lets do that now
                    taster = new TasterModel
                    {
                        DisplayName = User.DisplayName,
                        EmailAddress = User.Mail,
                        IsAdmin = false
                    };

                    await BeertastingRepository.AddTaster(taster);
                }
                    
                return new TasterViewModel
                {
                    DisplayName = taster.DisplayName,
                    EmailAddress = taster.EmailAddress,
                    IsAdmin = taster.IsAdmin,
                    TasterId = taster.TasterId,
                    Photo = UserPhoto,
                    JobTitle = User.JobTitle
                };
            }
            catch (Exception e)
            {
                ConsentHandler.HandleException(e);
                return new TasterViewModel();
            }
        }

        private async Task<string> GetPhoto()
        {
            try
            {
                using var photoStream = await Client.Me.Photo.Content.Request().GetAsync();
                return Convert.ToBase64String(((MemoryStream)photoStream).ToArray());
            }
            catch
            {
                return "";
            }
        }
    }
}
