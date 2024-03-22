import 'package:volunteersapp/data/auth/auth_repository_impl.dart';
import 'package:volunteersapp/domain/repositories/response_data.dart';

class AuthenticationUseCase {
  final AuthRepositoryImpl authRepository;

  AuthenticationUseCase({required this.authRepository});

    Future<ResponseData<void>> signInWithEmailAndPassword(String email, String password) async {
      try {
        final response = await authRepository.signInWithEmailAndPassword(email, password);

        if (response.success!) {
          return ResponseData<void>(success: true);
        } else {
          return ResponseData<void>(error: true, errorMessage: response.errorMessage);
        }
      } catch (e) {
        return ResponseData<void>(error: true, errorMessage: 'Error: $e');
      }
    }
  
  
    Future<void> login(String email, String password) async {
    try {
      final success = await authRepository.login(email, password);
      if (success.data?.email != null) {
        
      }
    } catch (e) {
      print(e);
    }
  }
}