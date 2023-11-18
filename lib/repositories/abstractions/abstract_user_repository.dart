import 'package:voluntiersapp/domain/users.dart';
import 'package:voluntiersapp/repositories/abstractions/response_data.dart';

abstract class AbstractUserRepository {
  Future<ResponseData<User>> getUser();
}
