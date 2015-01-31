using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(hotelreservation.Startup))]
namespace hotelreservation
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
