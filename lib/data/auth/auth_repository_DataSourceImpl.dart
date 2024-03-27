import 'package:volunteersapp/data/models/authentication/authentication_and_user_manager.dart/auth_login_model.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth_repository_datasource.dart';

class AuthenticationDataSourceImpl implements AbastractAuthRepositoryDataSource {
  final AbastractAuthRepositoryDataSource _abastractAuthRepositoryDataSource;

  AuthenticationDataSourceImpl({
    required AbastractAuthRepositoryDataSource abastractAuthRepositoryDataSource,
    }) : _abastractAuthRepositoryDataSource = abastractAuthRepositoryDataSource;

  @override
  Future<AuthLoginModel> signInWithEmailAndPassword(String email, String password) async {
    try {
      var response = await _abastractAuthRepositoryDataSource.signInWithEmailAndPassword(email, password);
      return response;
    }catch (e) {
      print('Erro ao fazer login: $e');
      throw e;
    }
  }

  @override
  Future<void> signOut() async {
    await _abastractAuthRepositoryDataSource.signOut();
  }

}
