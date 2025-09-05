class CartModel {
  final String id;
  final String status;
  final String category;
  final String name;
  final double price;
  final String description;
  final String image;
  final List<String> images;
  final String company;
  final int countInStock;
  final int sales;
  int quantity;
  final double totalPrice;

  CartModel({
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
    required this.sales,
    required this.quantity,
    required this.totalPrice,
  });

  /// fromJson constructor
  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      id: json['_id'] ?? '',
      status: json['status'] ?? '',
      category: json['category'] ?? '',
      name: json['name'] ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      description: json['description'] ?? '',
      image: json['image'] ?? '',
      images: List<String>.from(json['images'] ?? []),
      company: json['company'] ?? '',
      countInStock: json['countInStock'] ?? 0,
      sales: json['sales'] ?? 0,
      quantity: json['quantity'] ?? 0,
      totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0.0,
    );
  }
}
