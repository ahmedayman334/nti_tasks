import 'package:dio/dio.dart';
import 'package:laptop_store/constants/strings.dart';
import 'package:laptop_store/feature/login/data/login_model.dart';

class LoginData {
  final Dio dio = Dio();

  login({required String email, required String password}) async {
    var response = await dio.post(
      loginUrl,
      data: {"email": email, "password": password},
    );
    print("Server Response: ${response.data}"); // ✅ هيتطبع في الكونسول

    var data = response.data;
    var model = LoginModel.fromJson(data);
    return model;
  }
}
