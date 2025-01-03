class ToDo {
  final String todo;

  const ToDo(this.todo);
}

class Application {
  @ToDo("this feature will be implemented in next release")
  void featureA() {
    
  }
}