import 'package:voluntiersapp/core/http/abstract_http_client.dart';
import 'package:voluntiersapp/domain/users.dart';
import 'package:voluntiersapp/repositories/abstractions/response_data.dart';

abstract class AbstractUserRepository {
  AbstractUserRepository(AbstractHttpClient client);

  //Future<ResponseData<AboutInfo?>> getAboutInfo();
  Future<ResponseData<User>> getUser();
}
