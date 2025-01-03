import 'data/repository.dart';

void main() {

  CategoryRepository repository = Repository("Product");
  repository.id(1029123012);
  repository.name('Smartphone');
  repository.qty(1000);
  repository.location('Jakarta');

}