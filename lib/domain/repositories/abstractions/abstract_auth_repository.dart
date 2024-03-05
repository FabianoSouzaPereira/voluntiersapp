import 'package:voluntiersapp/core/http/abstract_http_client.dart';
import 'package:voluntiersapp/data/models/authentication/auth_login_model.dart';
import 'package:voluntiersapp/domain/repositories/response_data.dart';

abstract class AbstractAuthRepository {
  AbstractAuthRepository (AbstractHttpClient client);

  Future<ResponseData<AuthLoginModel>> getlogin(String email, String password);

  Future<ResponseData<AuthLoginModel>> signInWithEmailAndPassword(String email, String password); 
}