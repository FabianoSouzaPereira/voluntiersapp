import 'package:volunteersapp/core/http/abstract_http_client.dart';
import 'package:volunteersapp/data/models/users_model.dart';
import 'package:volunteersapp/domain/repositories/response_data.dart';

abstract class AbstractUserRepository {
  AbstractUserRepository(AbstractHttpClient client);

  //Future<ResponseData<AboutInfo?>> getAboutInfo();
  Future<ResponseData<UserModel>> getUser();
}
