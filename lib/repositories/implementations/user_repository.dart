import 'dart:io';
import 'package:dio/dio.dart';
import 'package:voluntiersapp/core/http/abstract_http_client.dart';
import 'package:voluntiersapp/domain/users.dart';
import 'package:voluntiersapp/repositories/abstractions/abstract_user_repository.dart';
import 'package:voluntiersapp/repositories/abstractions/response_data.dart';

class UserRepository extends AbstractUserRepository {
  UserRepository(AbstractHttpClient httpClient) : super(httpClient);

  @override
  Future<ResponseData<User>> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }
}
