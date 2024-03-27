import 'dart:convert';

SignUpResponse signUpResponseFromJson(String str) => SignUpResponse.fromJson(json.decode(str));

String signUpResponseToJson(SignUpResponse data) => json.encode(data.toJson());

class SignUpResponse {
    final String? idToken;
    final String? email;
    final String? refreshToken;
    final String? expiresIn;
    final String? localId;

    SignUpResponse({
        this.idToken,
        this.email,
        this.refreshToken,
        this.expiresIn,
        this.localId,
    });

    SignUpResponse copyWith({
        String? idToken,
        String? email,
        String? refreshToken,
        String? expiresIn,
        String? localId,
    }) => 
        SignUpResponse(
            idToken: idToken ?? this.idToken,
            email: email ?? this.email,
            refreshToken: refreshToken ?? this.refreshToken,
            expiresIn: expiresIn ?? this.expiresIn,
            localId: localId ?? this.localId,
        );

    factory SignUpResponse.fromJson(Map<String, dynamic> json) => SignUpResponse(
        idToken: json["idToken"],
        email: json["email"],
        refreshToken: json["refreshToken"],
        expiresIn: json["expiresIn"],
        localId: json["localId"],
    );

    Map<String, dynamic> toJson() => {
        "idToken": idToken,
        "email": email,
        "refreshToken": refreshToken,
        "expiresIn": expiresIn,
        "localId": localId,
    };
}
