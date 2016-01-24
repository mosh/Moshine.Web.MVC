<%@ Page Language="Oxygene" Inherits="System.Web.Mvc.ViewPage<TestMVCApplication.Models.ViewModels.IndexViewModel>" %>

<%@ Import Namespace="Moshine.Web.MVC.Helpers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <%= Html.DataGrid2(self.Model.Employees,
            column -> begin 
                column.&For(e -> e.Id).Title("Employee Id"); 
                column.&For(e -> e.Firstname).Title("Firstname"); 
                column.&For(e -> '<a>' + Html.Encode(e.Firstname) + ' ' + Html.Encode(e.Lastname) + '</a>').Title("Link").Encode(false);
            end,
            [new KeyValuePair<HtmlTextWriterAttribute, String>(HtmlTextWriterAttribute.Id, 'Product')]
            )%>
    
    </div>
    </form>
</body>
</html>
