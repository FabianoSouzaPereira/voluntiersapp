import 'dart:math';

import 'package:volunteersapp/core/http/abstract_http_client.dart';
import 'package:volunteersapp/data/models/authentication/auth_login_model.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth_repository.dart';
import 'package:volunteersapp/domain/repositories/response_data.dart';

class AuthRepositoryImpl implements AbstractAuthRepository {
  final AbstractHttpClient client;

  AuthRepositoryImpl(this.client);


  @override
  Future<ResponseData<AuthLoginModel>> signInWithEmailAndPassword(String email, String password) async {
    try {
      final response = await client.post(
        'signInWithEmailAndPassword',
        data: {
          'email': email, 
          'password': password, 
          'returnSecureToken': true,
        },
        queryParameters: { 'key':"AIzaSyATLSd5MUNBIBKc2GfeO3XZKJAE3n-2O2c"},
      );

      if (response.statusCode == 200) {
      final authLoginModel=  AuthLoginModel.fromJson(response.data);

      return ResponseData<AuthLoginModel>(data: authLoginModel, success: true, error: false);

      } else {

        return ResponseData<AuthLoginModel>(error: true, errorMessage: e.toString());
      }
    }catch(e){
      throw Exception('Erro ao realizar a solicitação: $e');
    }
  }

  @override
  Future<ResponseData<AuthLoginModel>> login(String email, String password) async {
    try {
      final response = await client.post(
        '/login', 
        data: {'email': email, 'password': password},
        queryParameters: {},
      );

      if (response.statusCode == 200) {
        final authLoginModel = AuthLoginModel.fromJson(response.data);
        return ResponseData<AuthLoginModel>(data: authLoginModel, success: true);
      } else {
        return ResponseData<AuthLoginModel>(
          errorMessage: 'Failed to login. Status code: ${response.statusCode}', success: false,
        );
      }
    } catch (e) {
      return ResponseData<AuthLoginModel>(error: true, errorMessage: e.toString());
    }
  }
  
  @override
  Future<ResponseData<AuthLoginModel>> getlogin(String email, String password) {
    throw UnimplementedError();
  }
  

  

}
