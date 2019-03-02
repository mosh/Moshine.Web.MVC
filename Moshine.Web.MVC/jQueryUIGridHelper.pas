namespace Moshine.Web.MVC.Helpers;

interface

uses
	System.Collections.Generic,
	System.IO,
	System.Linq,
	System.Text,
	Microsoft.AspNetCore.Mvc,
	Moshine.Web.Helpers;



	//extension method HtmlHelper<TModel>.jQueryUIGrid(builder:Action<ColumnBuilder>; attributes: array of KeyValuePair<System.Web.UI.HtmlTextWriterAttribute,String>; jsonEndPoint:String; modelType:&Type):String; where TModel is class;

implementation

/*
extension method HtmlHelper<TModel>.jQueryUIGrid(builder:Action<ColumnBuilder>; attributes: array of KeyValuePair<System.Web.UI.HtmlTextWriterAttribute,String>; jsonEndPoint:String;modelType:&Type):String;
begin

	var id := '';
	var _builder := new ColumnBuilder;

	builder(_builder);


	var writer := new HtmlTextWriter(new StringWriter());

	for each attribute in attributes do
	begin
		if(attribute.Key = HtmlTextWriterAttribute.Id)then
		begin
			id := attribute.Value;
		end;

		writer.AddAttribute(attribute.Key, attribute.Value);
	end;


	writer.RenderBeginTag(HtmlTextWriterTag.Table);
	writer.RenderBeginTag(HtmlTextWriterTag.Thead);
	writer.RenderBeginTag(HtmlTextWriterTag.Tr);

	for each propertyGetter in _builder.PropertyGetters do
	begin
		writer.Write(string.Format('<th data-field="{0}">{1}</th>',propertyGetter.ColumnId, propertyGetter.ColumnTitle));
	end;

	writer.RenderEndTag();
	writer.RenderEndTag();
	writer.RenderBeginTag(HtmlTextWriterTag.Tbody);
	writer.RenderEndTag();
	writer.RenderEndTag();


	if(id.Length > 0) then
	begin
		var markup := new StringBuilder;

		markup.AppendLine(string.Format('<script type="text/x-jquery-tmpl" id="{0}-row-tmpl">',id));
		markup.AppendLine('<tr>');
		for each propertyGetter in _builder.PropertyGetters do
		begin
			if(propertyGetter.HasLink)then
			begin
				markup.Append(string.Format('<td><span id="${{{0}}}">${{{1}}}</span></td>', propertyGetter.LinkColumnId, propertyGetter.ColumnId) );

			end
			else
			begin
				markup.Append(string.Format('<td>${{{0}}}</td>',propertyGetter.ColumnId) );
			end;
		end;
		markup.AppendLine('</tr>');
		markup.AppendLine('</script>');



		markup.AppendLine('<script type="text/javascript">');

		markup.AppendLine('$(document).ready(function () {');

		markup.AppendLine(string.Format('$.ui.dataitem.extend(''{0}'', {{}});',modelType.Name));
		markup.AppendLine('$.ui.datasource({');
		markup.AppendLine(string.Format('type: ''{0}'',',modelType.Name));
		markup.AppendLine('source: function (request, response) {');
		markup.AppendLine(string.Format('$.getJSON(''{0}'', request, response);',jsonEndPoint));
		markup.AppendLine('}');
		markup.AppendLine('});');

		markup.AppendLine(string.Format('$(''#{0}'').grid({{',id));
		markup.AppendLine(string.Format('type: ''{0}'',',modelType.Name));
		markup.AppendLine(string.Format('rowTemplate: $(''#{0}-row-tmpl'').html()', id));
		markup.AppendLine('});');
		markup.AppendLine('});');
		markup.AppendLine('</script>');

		writer.Write(markup.ToString);

	end;



	exit writer.InnerWriter.ToString();

end;
*/
end.