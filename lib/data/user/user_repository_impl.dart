// ignore_for_file: use_super_parameters
import 'package:volunteersapp/core/http/abstract_http_client.dart';
import 'package:volunteersapp/data/models/users_model.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_user_repository.dart';
import 'package:volunteersapp/domain/repositories/response_data.dart';

class UserRepositoryImpl extends AbstractUserRepository {
  UserRepositoryImpl(AbstractHttpClient httpClient) : super(httpClient);

  @override
  Future<ResponseData<UserModel>> getUser() {
    throw UnimplementedError();
  }
}
