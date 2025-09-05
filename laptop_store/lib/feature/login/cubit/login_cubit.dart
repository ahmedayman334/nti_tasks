import 'package:bloc/bloc.dart';
import 'login_state.dart';
import 'package:laptop_store/feature/login/data/login_services.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final LoginData loginData = LoginData();

  Future<void> loginCubit({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    try {
      final loginModel = await loginData.login(
        email: email,
        password: password,
      );
      emit(LoginSuccess(loginModel: loginModel));
    } catch (e) {
      emit(LoginFailure(errorMessage: e.toString()));
    }
  }
}
