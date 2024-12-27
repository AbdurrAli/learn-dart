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
  print('Hi, my name is ${employee.name}');
}

void main() {
  sayHello(Employee('Eko'));
  sayHello(Manager('Aldi'));
  sayHello(ViceManager('Ahmad'));
}