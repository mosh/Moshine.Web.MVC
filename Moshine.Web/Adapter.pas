namespace Moshine.Web.Helpers;

interface

uses
  System.Collections.Generic,
  System.Linq,
  System.Runtime.Serialization,
  System.Text;

type

  [DataContract]
  Row = public class
  private
    _cell:List<String> := new List<String>; 
  public

    [DataMember]
    property id:String;
    [DataMember]
    property cell:List<String> read _cell;
  end;

  [DataContract]
  GridJsonDataAdapter<T> = public class
  private
    _rows:List<Row> := new List<Row>();
    expectedPropertyNames:Array of String;

  protected
    propertiesInfo:Array of System.Reflection.PropertyInfo;

    method AddCells(item:T; someRow:Row);

  public
    constructor(propertyNames:Array of String);
    method Adapt(data:List<T>);virtual;empty;

    [DataMember]
    property rows:List<Row> read _rows;
    [DataMember]
    property page:String;
    [DataMember]
    property total:String;
  end;

  [DataContract]
  FlexiDataAdapter<T> = public class(GridJsonDataAdapter<T>)
  public
    method Adapt(data:List<T>);override;
  end;

  [DataContract]
  jqDataAdapter<T> = public class (GridJsonDataAdapter<T>)
  public
    [DataMember]
    property records:String;

    method Adapt(data:List<T>);override;

  end;

implementation

method FlexiDataAdapter<T>.Adapt(data:List<T>);
begin

  self.page := "1";
  self.total := "1";

  var rowIndex:Integer := 1;

  for item:T in data do
  begin
    var row:= new Row;
    row.id:=rowIndex.ToString;
    AddCells(item, row);
    self.rows.Add(row);
    inc(rowIndex);
  end;
end;

method jqDataAdapter<T>.Adapt(data:List<T>);
begin

  self.page := "1";
  self.records := data.Count.ToString;
  self.total := "1";

  var rowIndex:Integer := 1;

  for item:T in data do
  begin
    var row:= new Row;
    row.id:=rowIndex.ToString;
    AddCells(item, row);
    self.rows.Add(row);
    inc(rowIndex);
  end;

end;

method GridJsonDataAdapter<T>.AddCells(item:T; someRow:Row);
begin
  var itemType:=item.GetType();

  if(not assigned(propertiesInfo))then
  begin
    propertiesInfo:=itemType.GetProperties();
  end;

  for expectedPropertyName in self.expectedPropertyNames do
  begin
    for propertyInfo in propertiesInfo do
    begin
      if((propertyInfo.CanRead) and (expectedPropertyName=propertyInfo.Name))then
      begin
        var getMethod:=propertyInfo.GetGetMethod;
        var cellValue:=getMethod.Invoke(item,nil);
        if(assigned(cellValue))then
        begin
          someRow.cell.Add(cellValue.ToString);
        end
        else
        begin
          someRow.cell.Add('');
        end;
      end;
    end;
  end;

end;

constructor GridJsonDataAdapter<T>(propertyNames:Array of String);
begin
  self.expectedPropertyNames:=propertyNames;
end;

end.