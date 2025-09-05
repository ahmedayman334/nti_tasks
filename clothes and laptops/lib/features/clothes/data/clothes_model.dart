class FakeStoreProduct {
  final int id;
  final String title;
  final String image;
  final double price;

  FakeStoreProduct({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
  });

  factory FakeStoreProduct.fromJson(Map<String, dynamic> json) {
    return FakeStoreProduct(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      price: (json['price'] as num).toDouble(),
    );
  }
}
