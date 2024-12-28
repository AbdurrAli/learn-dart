class Employee {
  String? name;
  Employee(this.name);
}

class Manager extends Employee{
  Manager(super.name);
}

class ViceManager extends Manager {
  ViceManager(super.name);
}

void sayHello(Employee employee) {
  if (employee is ViceManager) {
    ViceManager viceManager = employee as ViceManager;
    print('Hi im VP, my name is ${viceManager.name}');
  } else if (employee is Manager) {
  Manager manager = employee as Manager;
  print('Hi im manager, my name is ${manager.name}');
  } else {
    print('Hi im employee, my name is ${employee.name}');
  }
}

void main() {
  sayHello(Employee('Eko'));
  sayHello(Manager('Aldi'));
  sayHello(ViceManager('Ahmad'));
}