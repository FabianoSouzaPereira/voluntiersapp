import 'dart:convert';

SignInWithPasswordResponse signInWithPasswordResponseFromJson(String str) => SignInWithPasswordResponse.fromJson(json.decode(str));

String signInWithPasswordResponseToJson(SignInWithPasswordResponse data) => json.encode(data.toJson());

class SignInWithPasswordResponse {
    final String? localId;
    final String? email;
    final String? displayName;
    final String? idToken;
    final bool? registered;
    final String? refreshToken;
    final String? expiresIn;

    SignInWithPasswordResponse({
        this.localId,
        this.email,
        this.displayName,
        this.idToken,
        this.registered,
        this.refreshToken,
        this.expiresIn,
    });

    SignInWithPasswordResponse copyWith({
        String? localId,
        String? email,
        String? displayName,
        String? idToken,
        bool? registered,
        String? refreshToken,
        String? expiresIn,
    }) => 
        SignInWithPasswordResponse(
            localId: localId ?? this.localId,
            email: email ?? this.email,
            displayName: displayName ?? this.displayName,
            idToken: idToken ?? this.idToken,
            registered: registered ?? this.registered,
            refreshToken: refreshToken ?? this.refreshToken,
            expiresIn: expiresIn ?? this.expiresIn,
        );

    factory SignInWithPasswordResponse.fromJson(Map<String, dynamic> json) => SignInWithPasswordResponse(
        localId: json["localId"],
        email: json["email"],
        displayName: json["displayName"],
        idToken: json["idToken"],
        registered: json["registered"],
        refreshToken: json["refreshToken"],
        expiresIn: json["expiresIn"],
    );

    Map<String, dynamic> toJson() => {
        "localId": localId,
        "email": email,
        "displayName": displayName,
        "idToken": idToken,
        "registered": registered,
        "refreshToken": refreshToken,
        "expiresIn": expiresIn,
    };
}
