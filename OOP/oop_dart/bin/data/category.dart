class Category {
  int? id;
  String? name;

  Category(this.name, this.id);

  bool operator ==(Object other) {
    if (other is Category) {
      if(id != other.id) return false;
      if (name != other.name) return false;
      return true;
    } else {
      return false;
    }
  }

  int get hashCode {
    var result = id.hashCode;
    result += name.hashCode;
    return result;
  }

}