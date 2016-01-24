namespace TestMVCApplication;

interface

uses
  System,
  System.Data,
  System.Configuration,
  System.Collections,
  System.Web,
  System.Web.Mvc,
  System.Web.Routing;

type
   Global_asax = public class(System.Web.HttpApplication)
   protected
     method Application_Start(sender: Object; e: EventArgs);

    public 
      class method RegisterRoutes(routes:RouteCollection);
   end;

implementation

method Global_asax.Application_Start(sender: Object; e: EventArgs);
begin
  AreaRegistration.RegisterAllAreas();

  RegisterRoutes(RouteTable.Routes);
 
end;

class method Global_asax.RegisterRoutes(routes:RouteCollection);
begin
  routes.IgnoreRoute('{resource}.axd/{*pathInfo}');

  routes.IgnoreRoute('{*favicon}', new class ( favicon := '(.*/)?favicon.ico(/.*)?' ));

  routes.MapRoute(
      "Default", // Route name
      "{controller}/{action}/{id}", // URL with parameters
      new class ( controller := "Home", action := "Index", id := UrlParameter.Optional ) // Parameter defaults
  );

end;

end.
    