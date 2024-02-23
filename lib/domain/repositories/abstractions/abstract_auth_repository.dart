import 'package:voluntiersapp/core/http/abstract_http_client.dart';
import 'package:voluntiersapp/domain/repositories/response_data.dart';

abstract class AuthRepository {
  AuthRepository(AbstractHttpClient client);

  Future<ResponseData<AuthRepository>> getlogin();
}