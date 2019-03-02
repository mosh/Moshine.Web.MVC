namespace Moshine.Web.MVC;

interface

uses
  System.Collections.Generic,
  System.Linq,
  System.Text,
  System.Collections.Generic,
  System.IO,
  System.IO.Compression,
  System.Linq,
  System.Net,
  System.Text,
  System.Threading.Tasks,
  Microsoft.AspNetCore.Mvc;

type

  HttpWebResponseResult = public class(ActionResult)
  private
    var _response: HttpWebResponse;
    var _innerResult: ActionResult;
  public
    constructor(responseToRelay: HttpWebResponse);
    method ExecuteResult(context: ActionContext); override;
  end;

implementation

constructor HttpWebResponseResult(responseToRelay: HttpWebResponse);
begin
  if responseToRelay = nil then begin
    raise new ArgumentNullException('response');
  end;
  _response := responseToRelay;
  var contentStream: Stream;
  if responseToRelay.ContentEncoding.Contains('gzip') then begin
    contentStream := new GZipStream(responseToRelay.GetResponseStream(), CompressionMode.Decompress);
  end
  else begin
    if responseToRelay.ContentEncoding.Contains('deflate') then begin
      contentStream := new DeflateStream(responseToRelay.GetResponseStream(), CompressionMode.Decompress);
    end
    else begin
      contentStream := responseToRelay.GetResponseStream();
    end;
  end;
  if String.IsNullOrEmpty(responseToRelay.CharacterSet) then begin
    //  File result
    _innerResult := new FileStreamResult(contentStream, responseToRelay.ContentType);
  end
  else begin
    //  Text result
    var contentResult := new ContentResult();
    contentResult := new ContentResult();
    contentResult.Content := new StreamReader(contentStream).ReadToEnd();
    _innerResult := contentResult;
  end;
end;

method HttpWebResponseResult.ExecuteResult(context: ActionContext);
begin
  var clientResponse := context.HttpContext.Response;
  clientResponse.StatusCode := Integer(_response.StatusCode);
  for each headerKey in _response.Headers.AllKeys do begin
    case headerKey of
      'Content-Length': begin
        end;
      'Transfer-Encoding': begin
        end;
      'Content-Encoding': begin
        end;
      else begin
        //clientResponse.AddHeader(headerKey, _response.Headers[headerKey]);
      end;
    end;
  end;
  _innerResult.ExecuteResult(context);
end;


end.