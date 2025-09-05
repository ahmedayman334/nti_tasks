class FavModel {
  final String id;
  final String? name;
  final String? image;
  final double? price;

  FavModel({required this.id, this.name, this.image, this.price});

  // للتحويل من JSON
  factory FavModel.fromJson(Map<String, dynamic> json) {
    return FavModel(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      image: json['image'] ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
    );
  }
}
