import 'package:laptop_store/feature/auth/data/auth_model.dart';

sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final AuthModel authModel;

  AuthSuccess({required this.authModel});
}

final class AuthError extends AuthState {
  final String errorMessage;

  AuthError({required this.errorMessage});
}
