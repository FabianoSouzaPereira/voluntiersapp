import 'package:voluntiersapp/data/models/authentication/auth_login_model.dart';

abstract class AbastractAuthRepositoryDataSource {
  Future<AuthLoginModel> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
  // Outros métodos de autenticação, se necessário
}
