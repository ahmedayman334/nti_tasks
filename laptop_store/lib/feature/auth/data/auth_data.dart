import 'package:dio/dio.dart';
import 'package:laptop_store/constants/strings.dart';

class AuthData {
  final Dio dio = Dio();

  Future<Map<String, dynamic>> registerData({
    required String name,
    required String email,
    required String phone,
    required String nationaId,
    required String gander,
    required String password,
  }) async {
    String base64Image =
        "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mP8/x8AAukB9ZbgZQAAAABJRU5ErkJggg==";

    var response = await dio.post(
      authUrl,
      data: {
        "email": email,
        "password": password,
        "name": name,
        "phone": phone,
        "nationalId": nationaId,
        "gender": gander,
        "profileImage": base64Image,
      },
    );

    print("Server Response: ${response.data}");
    return response.data;
  }
}
