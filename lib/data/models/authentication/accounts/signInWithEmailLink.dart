import 'dart:convert';

class SignInWithEmailLink {
    final String oobCode;
    final String email;
    final String? idToken;
    final String? tenantId;

    SignInWithEmailLink({
        required this.oobCode,
        required this.email,
        this.idToken,
        this.tenantId,
    });

    SignInWithEmailLink copyWith({
        String? oobCode,
        String? email,
        String? idToken,
        String? tenantId,
    }) => 
        SignInWithEmailLink(
            oobCode: oobCode ?? this.oobCode,
            email: email ?? this.email,
            idToken: idToken ?? this.idToken,
            tenantId: tenantId ?? this.tenantId,
        );

    factory SignInWithEmailLink.fromJson(Map<String, dynamic> json) => SignInWithEmailLink(
        oobCode: json["oobCode"],
        email: json["email"],
        idToken: json["idToken"],
        tenantId: json["tenantId"],
    );

    Map<String, dynamic> toJson() => {
        "oobCode": oobCode,
        "email": email,
        "idToken": idToken,
        "tenantId": tenantId,
    };
}

SignInWithEmailLink signInWithEmailLinkFromJson(String str) => SignInWithEmailLink.fromJson(json.decode(str));

String signInWithEmailLinkToJson(SignInWithEmailLink data) => json.encode(data.toJson());
