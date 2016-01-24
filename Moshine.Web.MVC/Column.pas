
{$HIDE CW3}
{$HIDE PW12}

namespace Moshine.Web.MVC.Helpers;

interface

uses
    System;
    
type

    Column = public class

    private
      _title:String;
      _link:String;
      method get_HasLink:Boolean;
    public
      method Title(Value:String):Column;
      method Link(Value:String):Column;
      
      property ColumnId:String;
      property ColumnTitle:String read _title;
      property LinkColumnId:String read _link;
      property HasLink:Boolean read get_HasLink;
    end;

    Column<T> = public class
    	where T is class;
    private
      _title:String;
      _encode:Boolean;
    public 
        constructor;
        
        property Getter : Func<T, object>;
        method Title(Value:String):Column<T>;
        method Encode(Value:Boolean):Column<T>;

        property ColumnTitle:String read _title;
        property EncodeGetterOutput:Boolean read _encode;
  	end;

implementation

{ Column }

constructor Column<T>;
begin
  self._title := '';
  self._encode := true;
end;

method Column<T>.Title(Value: String):Column<T>;
begin
  self. _title := value;
  exit self;
end;

method Column<T>.Encode(Value:Boolean):Column<T>;
begin
  self._encode := Value;
  exit self;
end;

method Column.Title(Value:String): Column;
begin
  self._title := Value;
  exit self;
end;

method Column.get_HasLink: Boolean;
begin
  
  exit Iif(not string.IsNullOrEmpty(LinkColumnId), true, false);
end;

method Column.Link(Value:String): Column;
begin
  _link := value;
end;

end.

