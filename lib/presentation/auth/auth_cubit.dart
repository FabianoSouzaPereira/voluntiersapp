import 'package:bloc/bloc.dart';
import 'package:voluntiersapp/data/auth/auth_repository_impl.dart';
import 'package:voluntiersapp/presentation/auth/auth_page_state.dart';

class AuthCubit extends Cubit<AuthPageState> {
  final AuthRepositoryImpl authRepository;

  AuthCubit(this.authRepository) : super(AuthPageStateInitial());

  Future<void> init() async {
    emit(AuthPageLoaded(listAuthLogin: const []));
  }

  Future<void> login(String email, String password) async {
    emit(AuthPageLoading());
    try {
      final success = await authRepository.login(email, password);
      if (success) {
        emit(AuthPageLoaded(listAuthLogin: const []));
      } else {
        emit(AuthPageError('Failed to login'));
      }
    } catch (e) {
      emit(AuthPageError(e.toString()));
    }
  }

}

class AuthPageError extends AuthPageState {
  final String errorMessage;

  AuthPageError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
