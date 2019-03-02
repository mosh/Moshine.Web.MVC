namespace Moshine.Web.MVC.Helpers;

interface

uses
  System.Collections.Generic,
  System.Linq,
  System.Text,
  System.Web,
  System.Web.Mvc.*,
  Microsoft.AspNetCore.Mvc.ViewFeatures;

 extension method HtmlHelper.Script(path:String):String;
 extension method HtmlHelper.Css(path:String):String;

implementation

extension method HtmlHelper.Script(path:String):String;
begin
    /*
    var filePath := VirtualPathUtility.ToAbsolute(path);
    result :=  '<script type="text/javascript" src="' + filePath + '"></script>';
    */
end;

extension method HtmlHelper.Css(path:String):String;
begin
    /*
    var filePath := VirtualPathUtility.ToAbsolute(path);
    result :=  '<link href="'+ filePath + '" rel="stylesheet" type="text/css" />';
    */
end;

//    <link href="../../style.css" rel="stylesheet" type="text/css" />


end.