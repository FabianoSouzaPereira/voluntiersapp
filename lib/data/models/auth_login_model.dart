import 'dart:ffi';

import 'package:voluntiersapp/domain/entities/auth_login_entity.dart';

class AuthLoginModel {
  final String email;
  final String password;
  final Bool returnSecureToken;

  AuthLoginModel({
    required this.email, 
    required this.password, 
    required this.returnSecureToken
  });
}

/* Adding the ability to convert to UserEntity to UserModel */

extension AuthLoginModelX on AuthLoginModel {
  AuthLoginEntity toEntity() {
    return AuthLoginEntity(
      email: email,
      password: password,
      returnSecureToken: returnSecureToken,
    );
  }
}