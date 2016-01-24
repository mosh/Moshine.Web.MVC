namespace jQuery.UI.Grid.Controllers;

interface

uses
  jQuery.UI.Grid.Models,
  System.Collections.Generic,
  System.Text, System.Web.Mvc;

type

  HomeController = public class(Controller)
  private
  protected
  public
    method Index:ActionResult;
    method Products:ActionResult;
  end;

implementation

method HomeController.Index: ActionResult;
begin
  exit View;
end;

method HomeController.Products: ActionResult;
begin
  var someProducts := new List<Product>;
  someProducts.Add(new Product(ProductId:=10, ProductName:= 'Spanner', Supplier:='Spanner Supplier',Category:='Spare Parts',QuantityPerUnit:= 10,UnitPrice:=1,UnitsInStock:=10));
  someProducts.Add(new Product(ProductId:=12, ProductName:= 'Hacksaw', Supplier:='Hacks Supplier',Category:='Spare Parts',QuantityPerUnit:= 10,UnitPrice:=1,UnitsInStock:=10));

  exit Json(someProducts, JsonRequestBehavior.AllowGet);
end;

end.
