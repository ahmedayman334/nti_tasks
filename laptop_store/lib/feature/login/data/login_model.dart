class LoginModel {
  final String message;
  final String status;

  LoginModel({required this.message, required this.status});

  factory LoginModel.fromJson(Map<String, dynamic> data) {
    return LoginModel(
      message: data['message'] ?? '',
      status: data['status'] ?? '',
    );
  }
}
