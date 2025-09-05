class AuthModel {
  final String message;
  final String status;

  AuthModel({required this.message, required this.status});

  factory AuthModel.fromJson(Map<String, dynamic> data) {
    return AuthModel(
      message: data['message'] ?? '',
      status: data['status'] ?? '',
    );
  }
}
