import 'dart:convert';

SignInWithPasswordRequest signInWithPasswordRequestFromJson(String str) => SignInWithPasswordRequest.fromJson(json.decode(str));

String signInWithPasswordRequestToJson(SignInWithPasswordRequest data) => json.encode(data.toJson());

class SignInWithPasswordRequest {
    final String? email;
    final String? password;
    final bool? returnSecureToken;

    SignInWithPasswordRequest({
        this.email,
        this.password,
        this.returnSecureToken,
    });

    SignInWithPasswordRequest copyWith({
        String? email,
        String? password,
        bool? returnSecureToken,
    }) => 
        SignInWithPasswordRequest(
            email: email ?? this.email,
            password: password ?? this.password,
            returnSecureToken: returnSecureToken ?? this.returnSecureToken,
        );

    factory SignInWithPasswordRequest.fromJson(Map<String, dynamic> json) => SignInWithPasswordRequest(
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
