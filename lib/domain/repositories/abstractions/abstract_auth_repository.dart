import 'package:voluntiersapp/core/http/abstract_http_client.dart';

abstract class AuthRepository {
  AuthRepository(AbstractHttpClient client);

  Future<ResponseData<Auth>> getlogin();
}