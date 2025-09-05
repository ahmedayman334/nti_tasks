// lib/features/fakestore/service/fakestore_service.dart
import 'package:api/features/clothes/data/clothes_model.dart';
import 'package:dio/dio.dart';

class FakeStoreService {
  final Dio dio = Dio();

  Future<List<FakeStoreProduct>> fetchProducts() async {
    try {
      final response = await dio.get("https://fakestoreapi.com/products");
      if (response.statusCode == 200) {
        final List data = response.data;
        return data.map((json) => FakeStoreProduct.fromJson(json)).toList();
      } else {
        throw Exception("Failed to load FakeStore data");
      }
    } catch (e) {
      throw Exception("Error fetching FakeStore data: $e");
    }
  }
}
