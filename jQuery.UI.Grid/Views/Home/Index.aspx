<%@ Page Language="Oxygene" Inherits="System.Web.Mvc.ViewPage" %>

<%@ Import Namespace="Moshine.Web.MVC.Helpers" %>

<html>

<head>
    <link href="../../Content/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/grid-datamodel.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../scripts/jquery-1.4.4.js"></script>
    <script type="text/javascript" src="../../scripts/jquery.tmpl.js"></script>
</head>

<body>

    <% var url := Url.Action('Products','Home'); %>

    <%= Html.jQueryUIGrid(
            column -> begin 
                column.&For('ProductName').Title('Product Name').Link('ProductId'); 
                column.&For('Supplier').Title('Supplier'); 
                column.&For('Category').Title('Product Name'); 
                column.&For('QuantityPerUnit').Title('Quantity Per Unit'); 
                column.&For('UnitPrice').Title('Unit Price'); 
                column.&For('UnitsInStock').Title('Units In Stock'); 

            end,
            [new KeyValuePair<HtmlTextWriterAttribute, String>(HtmlTextWriterAttribute.Id, 'products')],
            url,typeof(jQuery.UI.Grid.Models.Product)
            
    ) %>

    <script src="../../Scripts/ui/jquery.ui.core.js")" type="text/javascript"></script>
    <script src="../../Scripts/ui/jquery.ui.widget.js")" type="text/javascript"></script>
    <script src="../../Scripts/datamodel/dataitem.js")" type="text/javascript"></script>
    <script src="../../Scripts/datamodel/datasource.js")" type="text/javascript"></script>
    <script src="../../Scripts/datamodel/extractor-datasource.js")" type="text/javascript"></script>
    <script src="../../Scripts/datamodel/datastore.js")" type="text/javascript"></script>
    <script src="../../Scripts/datamodel/grid.js")" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function () {

            $("#Products tr td span").each(function () {

                $(this).css("cursor", "hand");
                $(this).css("text-decoration", "underline");

                $(this).click(function () {
                    alert("clicked");
                });

            });

        });
    </script>



</body>


</html>

