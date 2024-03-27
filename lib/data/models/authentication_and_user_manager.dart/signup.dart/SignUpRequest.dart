import 'dart:convert';

SignUpRequest signUpRequestFromJson(String str) => SignUpRequest.fromJson(json.decode(str));

String signUpRequestToJson(SignUpRequest data) => json.encode(data.toJson());

class SignUpRequest {
    final String? email;
    final String? password;
    final bool? returnSecureToken;

    SignUpRequest({
        this.email,
        this.password,
        this.returnSecureToken,
    });

    SignUpRequest copyWith({
        String? email,
        String? password,
        bool? returnSecureToken,
    }) => 
        SignUpRequest(
            email: email ?? this.email,
            password: password ?? this.password,
            returnSecureToken: returnSecureToken ?? this.returnSecureToken,
        );

    factory SignUpRequest.fromJson(Map<String, dynamic> json) => SignUpRequest(
        email: json["email"],
        password: json["password"],
        returnSecureToken: json["returnSecureToken"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "returnSecureToken": returnSecureToken,
    };
}
