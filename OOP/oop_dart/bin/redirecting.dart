class Product {
  String? name;
  double? price;
  String? description;

  Product(this.name, this.price, this.description);


  // redirecting const
  Product.productJustName(String name) : this(name, 0.0, '');
  Product.productJustPrice(double price) : this('', price, '');
  Product.productJustDesc(String desc) : this('', 13.0, desc);

  // redirecting named constructor
  Product.productSmartphone(String name) : this.productJustName('xiaomi');

  // redirecting constructor
  Product.defaultProduct() : this('unkown', 0.0, 'no desc');

  Product.filledProduct(Map<String, dynamic> json)
      : name = json['name'] ?? 'Unknown',
        price = json['price'] ?? 0.0,
        description = (json['description'] as String?)!.isEmpty
            ? 'no info are given'
            : json['description'];
}

void main() {

  var defaultProduct = Product.defaultProduct();
  print(defaultProduct.name);
  print(defaultProduct.price);
  print(defaultProduct.description);


  var product = Product.filledProduct({
    'name': 'smartphone',
    'price': 10.000,
    'description': ''
  });

  print(product.name);
  print(product.price);
  print(product.description);
}