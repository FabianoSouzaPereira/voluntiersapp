// ignore_for_file: use_super_parameters
import 'package:voluntiersapp/core/http/abstract_http_client.dart';
import 'package:voluntiersapp/data/models/users_model.dart';
import 'package:voluntiersapp/domain/repositories/abstractions/abstract_user_repository.dart';
import 'package:voluntiersapp/domain/repositories/response_data.dart';

class UserRepositoryImpl extends AbstractUserRepository {
  UserRepositoryImpl(AbstractHttpClient httpClient) : super(httpClient);

  @override
  Future<ResponseData<UserModel>> getUser() {
    throw UnimplementedError();
  }
}
