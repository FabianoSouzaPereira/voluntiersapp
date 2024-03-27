import 'dart:convert';

SignInWithCustomTokenResponse signInWithCustomTokenResponseFromJson(String str) => SignInWithCustomTokenResponse.fromJson(json.decode(str));

String signInWithCustomTokenResponseToJson(SignInWithCustomTokenResponse data) => json.encode(data.toJson());

class SignInWithCustomTokenResponse {
    final String? idToken;
    final String? refreshToken;
    final String? expiresIn;

    SignInWithCustomTokenResponse({
        this.idToken,
        this.refreshToken,
        this.expiresIn,
    });

    SignInWithCustomTokenResponse copyWith({
        String? idToken,
        String? refreshToken,
        String? expiresIn,
    }) => 
        SignInWithCustomTokenResponse(
            idToken: idToken ?? this.idToken,
            refreshToken: refreshToken ?? this.refreshToken,
            expiresIn: expiresIn ?? this.expiresIn,
        );

    factory SignInWithCustomTokenResponse.fromJson(Map<String, dynamic> json) => SignInWithCustomTokenResponse(
        idToken: json["idToken"],
        refreshToken: json["refreshToken"],
        expiresIn: json["expiresIn"],
    );

    Map<String, dynamic> toJson() => {
        "idToken": idToken,
        "refreshToken": refreshToken,
        "expiresIn": expiresIn,
    };
}
