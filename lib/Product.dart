class Product {
  final String name;
  final String description;
  final int price;
  final String image;

  factory Product.fromJson(Map<String, dynamic> data) {
    return Product(
      data['name'],
      data['description'],
      data['price'],
      data['image'],
    );
  }

  Product(this.name, this.description, this.price, this.image);
  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(
      json['name'],
      json['description'],
      json['price'],
      json['image'],
    );
  }
}