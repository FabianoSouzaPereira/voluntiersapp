import 'dart:convert';

class SignInWithPassword {
    final String? email;
    final String? password;
    final String? pendingIdToken;
    final String? captchaChallenge;
    final String? captchaResponse;
    final String? instanceId;
    final String? delegatedProjectNumber;
    final String? idToken;
    final bool? returnSecureToken;
    final String? tenantId;
    final String? clientType;
    final String? recaptchaVersion;

    SignInWithPassword({
        this.email,
        this.password,
        this.pendingIdToken,
        this.captchaChallenge,
        this.captchaResponse,
        this.instanceId,
        this.delegatedProjectNumber,
        this.idToken,
        this.returnSecureToken,
        this.tenantId,
        this.clientType,
        this.recaptchaVersion,
    });

    SignInWithPassword copyWith({
        String? email,
        String? password,
        String? pendingIdToken,
        String? captchaChallenge,
        String? captchaResponse,
        String? instanceId,
        String? delegatedProjectNumber,
        String? idToken,
        bool? returnSecureToken,
        String? tenantId,
        String? clientType,
        String? recaptchaVersion,
    }) => 
        SignInWithPassword(
            email: email ?? this.email,
            password: password ?? this.password,
            pendingIdToken: pendingIdToken ?? this.pendingIdToken,
            captchaChallenge: captchaChallenge ?? this.captchaChallenge,
            captchaResponse: captchaResponse ?? this.captchaResponse,
            instanceId: instanceId ?? this.instanceId,
            delegatedProjectNumber: delegatedProjectNumber ?? this.delegatedProjectNumber,
            idToken: idToken ?? this.idToken,
            returnSecureToken: returnSecureToken ?? this.returnSecureToken,
            tenantId: tenantId ?? this.tenantId,
            clientType: clientType ?? this.clientType,
            recaptchaVersion: recaptchaVersion ?? this.recaptchaVersion,
        );

    factory SignInWithPassword.fromJson(Map<String, dynamic> json) => SignInWithPassword(
        email: json["email"],
        password: json["password"],
        pendingIdToken: json["pendingIdToken"],
        captchaChallenge: json["captchaChallenge"],
        captchaResponse: json["captchaResponse"],
        instanceId: json["instanceId"],
        delegatedProjectNumber: json["delegatedProjectNumber"],
        idToken: json["idToken"],
        returnSecureToken: json["returnSecureToken"],
        tenantId: json["tenantId"],
        clientType: json["clientType"],
        recaptchaVersion: json["recaptchaVersion"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "pendingIdToken": pendingIdToken,
        "captchaChallenge": captchaChallenge,
        "captchaResponse": captchaResponse,
        "instanceId": instanceId,
        "delegatedProjectNumber": delegatedProjectNumber,
        "idToken": idToken,
        "returnSecureToken": returnSecureToken,
        "tenantId": tenantId,
        "clientType": clientType,
        "recaptchaVersion": recaptchaVersion,
    };
}

SignInWithPassword signInWithPasswordFromJson(String str) => SignInWithPassword.fromJson(json.decode(str));

String signInWithPasswordToJson(SignInWithPassword data) => json.encode(data.toJson());
