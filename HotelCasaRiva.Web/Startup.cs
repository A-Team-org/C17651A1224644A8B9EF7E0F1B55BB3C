using HotelCasaRiva.Data;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HotelCasaRiva.Web.Startup))]
namespace HotelCasaRiva.Web
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
            //var context = new ApplicationDbContext();
            //context.EnsureDatabaseCreated();
        }
    }
}
