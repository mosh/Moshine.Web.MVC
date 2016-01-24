namespace TestMVCApplication.Controllers;

interface

uses
  TestMVCApplication.Models,
  TestMVCApplication.Models.ViewModels,
  System.Collections.Generic,
  System.Text, System.Web, System.Web.Mvc;

type

  EmployeeController = public class(Controller)
  private
  protected
  public
    method Index:ActionResult;
    method Index2:ActionResult;
  end;

implementation

method EmployeeController.Index:ActionResult;
begin
  var employees := new List<Employee>;
  employees.Add(new Employee(Id := 1, Firstname := 'John', Lastname := 'Smith'));
  employees.Add(new Employee(Id := 2, Firstname := 'Peter', Lastname := 'Snow'));
  employees.Add(new Employee(Id := 3, Firstname := 'Frank', Lastname := 'Bailey'));
  employees.Add(new Employee(Id := 4, Firstname := 'Paul', Lastname := 'Masters'));
  employees.Add(new Employee(Id := 5, Firstname := 'Smigly', Lastname := '<Masters'));

  exit View(new IndexViewModel(Employees := employees));
end;

method EmployeeController.Index2:ActionResult;
begin
  var employees := new List<Employee>;
  employees.Add(new Employee(Id := 1, Firstname := 'John', Lastname := 'Smith'));
  employees.Add(new Employee(Id := 2, Firstname := 'Peter', Lastname := 'Snow'));
  employees.Add(new Employee(Id := 3, Firstname := 'Frank', Lastname := 'Bailey'));
  employees.Add(new Employee(Id := 4, Firstname := 'Paul', Lastname := 'Masters'));
  employees.Add(new Employee(Id := 5, Firstname := 'Smigly', Lastname := '<Masters'));

  exit View(new IndexViewModel(Employees := employees));

end;

end.
