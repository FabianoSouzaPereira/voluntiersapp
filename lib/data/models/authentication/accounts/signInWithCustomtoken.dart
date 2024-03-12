import 'dart:convert';

class SignInWithCustomToken {
    final String token;
    final String? instanceId;
    final bool? returnSecureToken;
    final String? delegatedProjectNumber;
    final String? tenantId;

    SignInWithCustomToken({
        required this.token,
        this.instanceId,
        this.returnSecureToken,
        this.delegatedProjectNumber,
        this.tenantId,
    });

    SignInWithCustomToken copyWith({
        String? token,
        String? instanceId,
        bool? returnSecureToken,
        String? delegatedProjectNumber,
        String? tenantId,
    }) => 
        SignInWithCustomToken(
            token: token ?? this.token,
            instanceId: instanceId ?? this.instanceId,
            returnSecureToken: returnSecureToken ?? this.returnSecureToken,
            delegatedProjectNumber: delegatedProjectNumber ?? this.delegatedProjectNumber,
            tenantId: tenantId ?? this.tenantId,
        );

    factory SignInWithCustomToken.fromJson(Map<String, dynamic> json) => SignInWithCustomToken(
        token: json["token"],
        instanceId: json["instanceId"],
        returnSecureToken: json["returnSecureToken"],
        delegatedProjectNumber: json["delegatedProjectNumber"],
        tenantId: json["tenantId"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "instanceId": instanceId,
        "returnSecureToken": returnSecureToken,
        "delegatedProjectNumber": delegatedProjectNumber,
        "tenantId": tenantId,
    };
}

SignInWithCustomToken signInWithCustomTokenFromJson(String str) => SignInWithCustomToken.fromJson(json.decode(str));

String signInWithCustomTokenToJson(SignInWithCustomToken data) => json.encode(data.toJson());
