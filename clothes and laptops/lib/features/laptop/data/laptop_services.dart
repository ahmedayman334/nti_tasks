// lib/features/laptop/service/elwekala_service.dart
import 'package:dio/dio.dart';
import '../data/lap_model.dart';

class LapServices {
  final Dio dio = Dio();

  Future<List<LapModel>> fetchLaptops() async {
    try {
      final response = await dio.get(
        "https://elwekala.onrender.com/product/Laptops",
      );

      if (response.statusCode == 200) {
        final List data = response.data["product"];
        return data.map((json) => LapModel.fromJson(json)).toList();
      } else {
        throw Exception("Failed to load Elwekala data");
      }
    } catch (e) {
      throw Exception("Error fetching Elwekala data: $e");
    }
  }
}
