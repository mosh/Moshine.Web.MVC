namespace Moshine.Web.MVC.Helpers;

interface

uses
	Moshine.Web.Helpers,
	System,
	System.Collections,
	System.Collections.Generic,
	System.IO,
	System.Linq,
	System.Runtime.CompilerServices,
	Microsoft.AspNetCore.Mvc, Microsoft.AspNetCore.Mvc.ViewFeatures;
	/*
	extension method HtmlHelper<TModel>.DataGrid<T,TModel>:String; where TModel is class, T is class;
	extension method HtmlHelper<TModel>.DataGrid<T>(columns: array of String; attributes: array of KeyValuePair<System.Web.UI.HtmlTextWriterAttribute,String>) : String; where TModel is Class, T is Class;
	extension method HtmlHelper<TModel>.DataGrid<T>(data: System.Object): System.String; where TModel is Class, T is Class;
	extension method HtmlHelper<TModel>.DataGrid<T>(data: System.Object; columns: array of System.String;
			attributes: array of KeyValuePair<System.Web.UI.HtmlTextWriterAttribute,String>): System.String; where TModel is Class, T is Class;

	extension method HtmlHelper<TModel>.DataGrid2<T,TModel>(data:IEnumerable<T>; builder:Action<ColumnBuilder<T>>; attributes: array of KeyValuePair<HtmlTextWriterAttribute,String>):String; where TModel is class, T is class;

	extension method HtmlHelper.DataGrid<T>() : String; where T is Class;
	extension method HtmlHelper.DataGrid<T>(columns: array of String; attributes: array of KeyValuePair<System.Web.UI.HtmlTextWriterAttribute,String>) : String; where T is Class;
	extension method HtmlHelper.DataGrid<T>(data: System.Object): System.String; where T is Class;
	extension method HtmlHelper.DataGrid<T>(data: System.Object; columns: array of System.String; attributes: array of KeyValuePair<System.Web.UI.HtmlTextWriterAttribute,String>): System.String; where T is Class;
	*/


type

	DataGridHelper = public static class

	public

		//class method DataGrid<T>(helper:HtmlHelper; data: System.Object; columns: array of System.String; attributes: array of KeyValuePair<System.Web.UI.HtmlTextWriterAttribute,String>): System.String; where T is Class;
		//class method DataGrid<T>(helper:HtmlHelper; data: IEnumerable<T>; columns: IEnumerable<Column<T>>; attributes: array of KeyValuePair<System.Web.UI.HtmlTextWriterAttribute,String>): System.String; where T is Class;

	private
		//class method RenderHeader<T,C>(helper: HtmlHelper; writer: HtmlTextWriter; columns: IEnumerable<C>); where T is Class, C is Class;

		//class method RenderRow<T,C>(helper: HtmlHelper; writer: HtmlTextWriter; columns: IEnumerable<C>; item: T); where T is class, C is class;

	end;


implementation

/*

extension method HtmlHelper<TModel>.DataGrid2<T,TModel>(data:IEnumerable<T>; builder:Action<ColumnBuilder<T>>; attributes: array of KeyValuePair<HtmlTextWriterAttribute,String>):String;
begin
	var _builder := new ColumnBuilder<T>;

	builder(_builder);



	exit DataGridHelper.DataGrid<T>(self,sequence of T(data),sequence of Column<T>(_builder.PropertyGetters) ,attributes);

end;

extension method HtmlHelper<TModel>.DataGrid<T,TModel>:String;
begin
	exit DataGridHelper.DataGrid<T>(self,object(nil),[],[]);
end;

extension method HtmlHelper.DataGrid<T>(): System.String;
begin
	exit DataGridHelper.DataGrid<T>(self, object(nil), [], []);
end;

extension method HtmlHelper<TModel>.DataGrid<T>(columns: array of String; attributes: array of KeyValuePair<System.Web.UI.HtmlTextWriterAttribute,String>) : String;
begin
	exit DataGridHelper.DataGrid<T>(self,nil,columns,attributes);
end;

extension method HtmlHelper<TModel>.DataGrid<T>(data: System.Object): System.String;
begin
	exit DataGridHelper.DataGrid<T>(self,data,nil,[]);
end;

extension method HtmlHelper<TModel>.DataGrid<T>(data: System.Object; columns: array of System.String;
			attributes: array of KeyValuePair<System.Web.UI.HtmlTextWriterAttribute,String>): System.String;
begin
	exit DataGridHelper.DataGrid<T>(self,data,columns, attributes);
end;


extension method HtmlHelper.DataGrid<T>(data: System.Object): System.String;
begin
	exit DataGridHelper.DataGrid<T>(self, data, nil,[]);
end;

extension method HtmlHelper.DataGrid<T>(data: System.Object; columns: array of System.String; attributes: array of KeyValuePair<System.Web.UI.HtmlTextWriterAttribute,String>): System.String;
begin
	exit DataGridHelper.DataGrid<T>(self, data, columns, attributes);
end;

extension method HtmlHelper.DataGrid<T>(columns: array of String; attributes: array of KeyValuePair<System.Web.UI.HtmlTextWriterAttribute,String>) : String;
begin
	exit DataGridHelper.DataGrid<T>(self , nil, columns, attributes);
end;

class method DataGridHelper.DataGrid<T>(helper:HtmlHelper; data: IEnumerable<T>; columns: IEnumerable<Column<T>>; attributes: array of KeyValuePair<System.Web.UI.HtmlTextWriterAttribute,String>): System.String;
begin
	var writer := new HtmlTextWriter(new StringWriter());

	for each attribute in attributes do
	begin
		writer.AddAttribute(attribute.Key, attribute.Value);
	end;

	writer.RenderBeginTag(HtmlTextWriterTag.Table);


	writer.RenderBeginTag(HtmlTextWriterTag.Thead);
	DataGridHelper.RenderHeader<T,Column<T>>(helper, writer, columns);
	writer.RenderEndTag();

	writer.RenderBeginTag(HtmlTextWriterTag.Tbody);
	for each item in data do
	begin
		DataGridHelper.RenderRow<T,Column<T>>(helper, writer, columns, item);
	end;

	writer.RenderEndTag();

	writer.RenderEndTag();

	exit writer.InnerWriter.ToString()
end;

method DataGridHelper.DataGrid<T>(helper:HtmlHelper; data: System.Object; columns: array of System.String;
	attributes: array of KeyValuePair<System.Web.UI.HtmlTextWriterAttribute,String>): System.String;
begin
	var items := data as IEnumerable<T>;
	if items = nil then
	begin
		items := helper.ViewData.Model as IEnumerable<T>;
	end;

	if columns = nil then
	begin
		columns := typeof(T).GetProperties().Select(p -> p.Name).ToArray();
	end;

	var writer := new HtmlTextWriter(new StringWriter());

	for each attribute in attributes do
	begin
		writer.AddAttribute(attribute.Key, attribute.Value);
	end;

	writer.RenderBeginTag(HtmlTextWriterTag.Table);


	writer.RenderBeginTag(HtmlTextWriterTag.Thead);
	DataGridHelper.RenderHeader<T,string>(helper, writer, columns);
	writer.RenderEndTag();

	writer.RenderBeginTag(HtmlTextWriterTag.Tbody);
	for each item in items do
	begin
		DataGridHelper.RenderRow<T,string>(helper, writer, columns, item);
	end;

	writer.RenderEndTag();

	writer.RenderEndTag();

	exit writer.InnerWriter.ToString()
end;

class method DataGridHelper.RenderHeader<T,C>(helper: HtmlHelper; writer: HtmlTextWriter; columns: IEnumerable<C>);
begin
	writer.RenderBeginTag(HtmlTextWriterTag.Tr);
	for each column in columns do
	begin
		writer.RenderBeginTag(HtmlTextWriterTag.Th);
		if(column.GetType = typeof(string))then
		begin
			writer.Write(helper.Encode(column));
		end
		else
		begin
			writer.Write((column as Moshine.Web.MVC.Helpers.Column<T>).ColumnTitle);
		end;

		writer.RenderEndTag()
	end;
	writer.RenderEndTag();
end;

class method DataGridHelper.RenderRow<T,C>(helper: HtmlHelper; writer: HtmlTextWriter; columns: IEnumerable<C>; item: T);
begin


	writer.RenderBeginTag(HtmlTextWriterTag.Tr);

	for each column in columns do
	begin
		writer.RenderBeginTag(HtmlTextWriterTag.Td);

		var value : Object;
		var encode := true;

		if(column.GetType = typeof(string))then
		begin
			value := typeof(T).GetProperty(column.ToString).GetValue(item, nil);
		end
		else
		begin
			value := (column as Moshine.Web.MVC.Helpers.Column<T>).Getter(item);
			encode := (column as Moshine.Web.MVC.Helpers.Column<T>).EncodeGetterOutput;
		end;

		if(not assigned(value))then
		begin
			value := String.Empty;
		end;
		if(encode)then
		begin
			writer.Write(helper.Encode(value.ToString));
		end
		else
		begin
			writer.Write(value.ToString);
		end;

		writer.RenderEndTag;
	end;
	writer.RenderEndTag;
end;
*/

end.