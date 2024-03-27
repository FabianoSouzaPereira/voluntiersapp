import 'dart:convert';

SignInWithCustomTokenResponse SignInWithCustomTokenResponseFromJson(String str) => SignInWithCustomTokenResponse.fromJson(json.decode(str));

String SignInWithCustomTokenResponseToJson(SignInWithCustomTokenResponse data) => json.encode(data.toJson());

class SignInWithCustomTokenResponse {
    final String? token;
    final bool? returnSecureToken;

    SignInWithCustomTokenResponse({
        this.token,
        this.returnSecureToken,
    });

    SignInWithCustomTokenResponse copyWith({
        String? token,
        bool? returnSecureToken,
    }) => 
        SignInWithCustomTokenResponse(
            token: token ?? this.token,
            returnSecureToken: returnSecureToken ?? this.returnSecureToken,
        );

    factory SignInWithCustomTokenResponse.fromJson(Map<String, dynamic> json) => SignInWithCustomTokenResponse(
        token: json["token"],
        returnSecureToken: json["returnSecureToken"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "returnSecureToken": returnSecureToken,
    };
}