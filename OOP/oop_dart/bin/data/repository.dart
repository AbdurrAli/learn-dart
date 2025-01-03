import 'dart:mirrors';

abstract class CategoryRepository {
  id(int id);
  name(String name);
  qty(int qty);
  location(String loc);
}

class Repository extends CategoryRepository {

  final String _name;

  Repository(this._name);

  @override
  noSuchMethod(Invocation invocation) {
    var col = MirrorSystem.getName(invocation.memberName);
    var val = invocation.positionalArguments.first;
    var sql = "Select * from $_name where $col = '$val'";
    print(sql);
  }
}