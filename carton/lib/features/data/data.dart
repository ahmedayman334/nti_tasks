import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<List> getCharacters() async {
    try {
      var response = await dio.get("https://rickandmortyapi.com/api/character");
      return response.data['results'];
    } catch (e) {
      throw Exception("Error fetching characters: $e");
    }
  }
}
