import 'package:bloc/bloc.dart';
import 'package:laptop_store/feature/auth/cubit/auth_state.dart';
import 'package:laptop_store/feature/auth/data/auth_data.dart';
import 'package:laptop_store/feature/auth/data/auth_model.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final AuthData authData = AuthData();

  Future<void> registerCubit({
    required String name,
    required String email,
    required String phone,
    required String nationalId,
    required String gender,
    required String password,
  }) async {
    emit(AuthLoading());

    try {
      final response = await authData.registerData(
        name: name,
        email: email,
        phone: phone,
        nationaId: nationalId,
        gander: gender,
        password: password,
      );

      final authModel = AuthModel.fromJson(response);

      emit(AuthSuccess(authModel: authModel));
    } catch (e) {
      emit(AuthError(errorMessage: e.toString()));
    }
  }
}
