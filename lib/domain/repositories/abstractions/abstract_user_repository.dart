import 'package:voluntiersapp/core/http/abstract_http_client.dart';
import 'package:voluntiersapp/data/models/users_model.dart';
import 'package:voluntiersapp/domain/repositories/response_data.dart';

abstract class AbstractUserRepository {
  AbstractUserRepository(AbstractHttpClient client);

  //Future<ResponseData<AboutInfo?>> getAboutInfo();
  Future<ResponseData<UserModel>> getUser();
}
