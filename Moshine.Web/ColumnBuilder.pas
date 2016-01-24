
{$HIDE CW3}
{$HIDE PW12}

namespace Moshine.Web.Helpers;

interface

uses
    System, System.Collections.Generic;
    
type

    ColumnBuilder<T> = public class
    	where T is class;
    	
    private
    	_propertyGetters : List<Column<T>>;
    public 
        constructor;
        method &For(propertyGetter:Func<T, object>):Column<T>;
        
        property PropertyGetters:List<Column<T>> read _propertyGetters;
  	end;

    ColumnBuilder = public class
    private
    	_propertyGetters : List<Column>;
    public
      constructor;
      method &For(ColumnId:String):Column;
 
      property PropertyGetters:List<Column> read _propertyGetters;
   
    end;

implementation

{ ColumnBuilder }

constructor ColumnBuilder<T>;
begin
   	_propertyGetters := new List<Column<T>>;
end;

method ColumnBuilder<T>.&For(propertyGetter : Func<T, object>) : Column<T>;
begin
	var newColumn := new Column<T>( Getter := propertyGetter);
	_propertyGetters.Add(newColumn);
	exit newColumn;
end;


method ColumnBuilder.For(ColumnId:String): Column;
begin
	var newColumn := new Column( ColumnId := ColumnId);
	_propertyGetters.Add(newColumn);
	exit newColumn;

end;

constructor ColumnBuilder;
begin
   	_propertyGetters := new List<Column>;

end;

end.

