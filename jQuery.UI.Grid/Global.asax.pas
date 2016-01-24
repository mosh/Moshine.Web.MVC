namespace jQuery.UI.Grid;

interface

uses
  System,
  System.Data,
  System.Configuration,
  System.Collections,
  System.Web,System.Web.Mvc,
  System.Web.Routing;

type

   Global_asax = public class(System.Web.HttpApplication)
   protected
    method RegisterRoutes(routes : RouteCollection);
    method Application_Start(sender: Object; e: EventArgs);
   end;

implementation

method Global_asax.Application_Start(sender: Object; e: EventArgs);
begin
  RegisterRoutes(RouteTable.Routes);  
  
end;

method Global_asax.RegisterRoutes(routes : RouteCollection);
begin
  routes.IgnoreRoute('{resource}.axd/{*pathInfo}');

  routes.MapRoute('Index', 'Home/Index', new class (controller := 'Home', action := 'Index'));
  routes.MapRoute('Products', 'Home/Products', new class (controller := 'Home', action := 'Products'));

end;

end.
    