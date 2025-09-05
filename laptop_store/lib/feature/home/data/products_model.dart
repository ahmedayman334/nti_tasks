class ProductsModel {
  final String id;
  final String status;
  final String category;
  final String name;
  final num price;
  final String description;
  final String image;
  final List<String> images;
  final String company;
  final int countInStock;

  ProductsModel({
    required this.id,
    required this.status,
    required this.category,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.images,
    required this.company,
    required this.countInStock,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      id: json['_id'],
      status: json['status'],
      category: json['category'],
      name: json['name'],
      price: (json['price']).toDouble(),
      description: json['description'],
      image: json['image'],
      images: List<String>.from(json['images']),
      company: json['company'],
      countInStock: json['countInStock'],
    );
  }
}
