import 'dart:convert';

class SignUp {
    final String? email;
    final String? password;
    final String? displayName;
    final String? captchaChallenge;
    final String? captchaResponse;
    final String? instanceId;
    final String? idToken;
    final bool? emailVerified;
    final String? photoUrl;
    final bool? disabled;
    final String? localId;
    final String? phoneNumber;
    final String? tenantId;
    final String? targetProjectId;
    final List<MfaInfo>? mfaInfo;
    final String? clientType;
    final String? recaptchaVersion;

    SignUp({
        this.email,
        this.password,
        this.displayName,
        this.captchaChallenge,
        this.captchaResponse,
        this.instanceId,
        this.idToken,
        this.emailVerified,
        this.photoUrl,
        this.disabled,
        this.localId,
        this.phoneNumber,
        this.tenantId,
        this.targetProjectId,
        this.mfaInfo,
        this.clientType,
        this.recaptchaVersion,
    });

    SignUp copyWith({
        String? email,
        String? password,
        String? displayName,
        String? captchaChallenge,
        String? captchaResponse,
        String? instanceId,
        String? idToken,
        bool? emailVerified,
        String? photoUrl,
        bool? disabled,
        String? localId,
        String? phoneNumber,
        String? tenantId,
        String? targetProjectId,
        List<MfaInfo>? mfaInfo,
        String? clientType,
        String? recaptchaVersion,
    }) => 
        SignUp(
            email: email ?? this.email,
            password: password ?? this.password,
            displayName: displayName ?? this.displayName,
            captchaChallenge: captchaChallenge ?? this.captchaChallenge,
            captchaResponse: captchaResponse ?? this.captchaResponse,
            instanceId: instanceId ?? this.instanceId,
            idToken: idToken ?? this.idToken,
            emailVerified: emailVerified ?? this.emailVerified,
            photoUrl: photoUrl ?? this.photoUrl,
            disabled: disabled ?? this.disabled,
            localId: localId ?? this.localId,
            phoneNumber: phoneNumber ?? this.phoneNumber,
            tenantId: tenantId ?? this.tenantId,
            targetProjectId: targetProjectId ?? this.targetProjectId,
            mfaInfo: mfaInfo ?? this.mfaInfo,
            clientType: clientType ?? this.clientType,
            recaptchaVersion: recaptchaVersion ?? this.recaptchaVersion,
        );

    factory SignUp.fromJson(Map<String, dynamic> json) => SignUp(
        email: json["email"],
        password: json["password"],
        displayName: json["displayName"],
        captchaChallenge: json["captchaChallenge"],
        captchaResponse: json["captchaResponse"],
        instanceId: json["instanceId"],
        idToken: json["idToken"],
        emailVerified: json["emailVerified"],
        photoUrl: json["photoUrl"],
        disabled: json["disabled"],
        localId: json["localId"],
        phoneNumber: json["phoneNumber"],
        tenantId: json["tenantId"],
        targetProjectId: json["targetProjectId"],
        mfaInfo: json["mfaInfo"] == null ? [] : List<MfaInfo>.from(json["mfaInfo"]!.map((x) => MfaInfo.fromJson(x))),
        clientType: json["clientType"],
        recaptchaVersion: json["recaptchaVersion"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "displayName": displayName,
        "captchaChallenge": captchaChallenge,
        "captchaResponse": captchaResponse,
        "instanceId": instanceId,
        "idToken": idToken,
        "emailVerified": emailVerified,
        "photoUrl": photoUrl,
        "disabled": disabled,
        "localId": localId,
        "phoneNumber": phoneNumber,
        "tenantId": tenantId,
        "targetProjectId": targetProjectId,
        "mfaInfo": mfaInfo == null ? [] : List<dynamic>.from(mfaInfo!.map((x) => x.toJson())),
        "clientType": clientType,
        "recaptchaVersion": recaptchaVersion,
    };
}

class MfaInfo {
    final String? mfaFactor;

    MfaInfo({
        this.mfaFactor,
    });

    MfaInfo copyWith({
        String? mfaFactor,
    }) => 
        MfaInfo(
            mfaFactor: mfaFactor ?? this.mfaFactor,
        );

    factory MfaInfo.fromJson(Map<String, dynamic> json) => MfaInfo(
        mfaFactor: json["mfaFactor"],
    );

    Map<String, dynamic> toJson() => {
        "mfaFactor": mfaFactor,
    };
}

SignUp signUpFromJson(String str) => SignUp.fromJson(json.decode(str));

String signUpToJson(SignUp data) => json.encode(data.toJson());
