class Student {
  var name = 'Joko';
  var univ = 'Telkom University';
  var addr = 'Jakarta';
  
  String sayHello({String names = ''}) {
    return 'Hi, my name is $names $name, im from $univ $addr';
  }
 }

void main() {
  var student = Student();
  print(student.sayHello());

  var student2 = Student();
  student2.name = '';
  print(student2.sayHello(names:'Farhan'));
}