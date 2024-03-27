import 'dart:convert';
import 'package:volunteersapp/data/models/authentication_cloud_firestore/type/MfaInfo.dart';

class ProjectsTenantsAccounts {
    final String? email;
    final String? password;
    final String? displayName;
    final String? captchaChallenge;
    final String? captchaResponse;
    final String? instanceId;
    final String? idToken;
    final bool? emailVerified;
    final String? photoUrl;
    final String? disabled;
    final String? localId;
    final String? phoneNumber;
    final List<MfaInfo>? mfaInfo;
    final String? clientType;
    final String? recaptchaVersion;

    ProjectsTenantsAccounts({
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
        this.mfaInfo,
        this.clientType,
        this.recaptchaVersion,
    });

    ProjectsTenantsAccounts copyWith({
        String? email,
        String? password,
        String? displayName,
        String? captchaChallenge,
        String? captchaResponse,
        String? instanceId,
        String? idToken,
        bool? emailVerified,
        String? photoUrl,
        String? disabled,
        String? localId,
        String? phoneNumber,
        List<MfaInfo>? mfaInfo,
        String? clientType,
        String? recaptchaVersion,
    }) => 
        ProjectsTenantsAccounts(
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
            mfaInfo: mfaInfo ?? this.mfaInfo,
            clientType: clientType ?? this.clientType,
            recaptchaVersion: recaptchaVersion ?? this.recaptchaVersion,
        );

    factory ProjectsTenantsAccounts.fromMap(Map<String, dynamic> json) => ProjectsTenantsAccounts(
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
        mfaInfo: json["mfaInfo"] == null ? [] : List<MfaInfo>.from(json["mfaInfo"]!.map((x) => MfaInfo.fromJson(x))),
        clientType: json["clientType"],
        recaptchaVersion: json["recaptchaVersion"],
    );

    Map<String, dynamic> toMap() => {
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
        "mfaInfo": mfaInfo == null ? [] : List<dynamic>.from(mfaInfo!.map((x) => x.toJson())),
        "clientType": clientType,
        "recaptchaVersion": recaptchaVersion,
    };
}

ProjectsTenantsAccounts projectsTenantsAccountsFromMap(String str) => ProjectsTenantsAccounts.fromMap(json.decode(str));

String projectsTenantsAccountsToMap(ProjectsTenantsAccounts data) => json.encode(data.toMap());
