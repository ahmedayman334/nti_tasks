// lib/features/laptop/data/lap_model.dart
class LapModel {
  final String id;
  final String name;
  final num price;
  final String description;
  final String image;
  final String brand;

  LapModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.brand,
  });

  factory LapModel.fromJson(Map<String, dynamic> json) {
    return LapModel(
      id: json["_id"] ?? "",
      name: json["name"] ?? "",
      price: json["price"],

      description: json["description"] ?? "",
      image: json["image"] ?? "",
      brand: json["brand"] ?? "",
    );
  }
}
