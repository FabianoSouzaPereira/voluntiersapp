import 'dart:convert';

import 'package:volunteersapp/data/models/authentication/type/MfaInfo.dart';
import 'package:volunteersapp/data/models/authentication/type/ProviderUserInfo.dart';


class UserInfo {
    final String? localId;
    final String? email;
    final String? displayName;
    final String? language;
    final String? photoUrl;
    final String? timeZone;
    final String? dateOfBirth;
    final String? passwordHash;
    final String? salt;
    final int? version;
    final bool? emailVerified;
    final int? passwordUpdatedAt;
    final List<ProviderUserInfo>? providerUserInfo;
    final String? validSince;
    final bool? disabled;
    final String? lastLoginAt;
    final String? createdAt;
    final String? screenName;
    final bool? customAuth;
    final String? rawPassword;
    final String? phoneNumber;
    final String? customAttributes;
    final bool? emailLinkSignin;
    final String? tenantId;
    final List<MfaInfo>? mfaInfo;
    final String? initialEmail;
    final String? lastRefreshAt;

    UserInfo({
        this.localId,
        this.email,
        this.displayName,
        this.language,
        this.photoUrl,
        this.timeZone,
        this.dateOfBirth,
        this.passwordHash,
        this.salt,
        this.version,
        this.emailVerified,
        this.passwordUpdatedAt,
        this.providerUserInfo,
        this.validSince,
        this.disabled,
        this.lastLoginAt,
        this.createdAt,
        this.screenName,
        this.customAuth,
        this.rawPassword,
        this.phoneNumber,
        this.customAttributes,
        this.emailLinkSignin,
        this.tenantId,
        this.mfaInfo,
        this.initialEmail,
        this.lastRefreshAt,
    });

    UserInfo copyWith({
        String? localId,
        String? email,
        String? displayName,
        String? language,
        String? photoUrl,
        String? timeZone,
        String? dateOfBirth,
        String? passwordHash,
        String? salt,
        int? version,
        bool? emailVerified,
        int? passwordUpdatedAt,
        List<ProviderUserInfo>? providerUserInfo,
        String? validSince,
        bool? disabled,
        String? lastLoginAt,
        String? createdAt,
        String? screenName,
        bool? customAuth,
        String? rawPassword,
        String? phoneNumber,
        String? customAttributes,
        bool? emailLinkSignin,
        String? tenantId,
        List<MfaInfo>? mfaInfo,
        String? initialEmail,
        String? lastRefreshAt,
    }) => 
        UserInfo(
            localId: localId ?? this.localId,
            email: email ?? this.email,
            displayName: displayName ?? this.displayName,
            language: language ?? this.language,
            photoUrl: photoUrl ?? this.photoUrl,
            timeZone: timeZone ?? this.timeZone,
            dateOfBirth: dateOfBirth ?? this.dateOfBirth,
            passwordHash: passwordHash ?? this.passwordHash,
            salt: salt ?? this.salt,
            version: version ?? this.version,
            emailVerified: emailVerified ?? this.emailVerified,
            passwordUpdatedAt: passwordUpdatedAt ?? this.passwordUpdatedAt,
            providerUserInfo: providerUserInfo ?? this.providerUserInfo,
            validSince: validSince ?? this.validSince,
            disabled: disabled ?? this.disabled,
            lastLoginAt: lastLoginAt ?? this.lastLoginAt,
            createdAt: createdAt ?? this.createdAt,
            screenName: screenName ?? this.screenName,
            customAuth: customAuth ?? this.customAuth,
            rawPassword: rawPassword ?? this.rawPassword,
            phoneNumber: phoneNumber ?? this.phoneNumber,
            customAttributes: customAttributes ?? this.customAttributes,
            emailLinkSignin: emailLinkSignin ?? this.emailLinkSignin,
            tenantId: tenantId ?? this.tenantId,
            mfaInfo: mfaInfo ?? this.mfaInfo,
            initialEmail: initialEmail ?? this.initialEmail,
            lastRefreshAt: lastRefreshAt ?? this.lastRefreshAt,
        );

    factory UserInfo.fromMap(Map<String, dynamic> json) => UserInfo(
        localId: json["localId"],
        email: json["email"],
        displayName: json["displayName"],
        language: json["language"],
        photoUrl: json["photoUrl"],
        timeZone: json["timeZone"],
        dateOfBirth: json["dateOfBirth"],
        passwordHash: json["passwordHash"],
        salt: json["salt"],
        version: json["version"],
        emailVerified: json["emailVerified"],
        passwordUpdatedAt: json["passwordUpdatedAt"],
        providerUserInfo: json["providerUserInfo"] == null ? [] : List<ProviderUserInfo>.from(json["providerUserInfo"]!.map((x) => ProviderUserInfo.fromMap(x))),
        validSince: json["validSince"],
        disabled: json["disabled"],
        lastLoginAt: json["lastLoginAt"],
        createdAt: json["createdAt"],
        screenName: json["screenName"],
        customAuth: json["customAuth"],
        rawPassword: json["rawPassword"],
        phoneNumber: json["phoneNumber"],
        customAttributes: json["customAttributes"],
        emailLinkSignin: json["emailLinkSignin"],
        tenantId: json["tenantId"],
        mfaInfo: json["mfaInfo"] == null ? [] : List<MfaInfo>.from(json["mfaInfo"]!.map((x) => MfaInfo.fromMap(x))),
        initialEmail: json["initialEmail"],
        lastRefreshAt: json["lastRefreshAt"],
    );

    Map<String, dynamic> toMap() => {
        "localId": localId,
        "email": email,
        "displayName": displayName,
        "language": language,
        "photoUrl": photoUrl,
        "timeZone": timeZone,
        "dateOfBirth": dateOfBirth,
        "passwordHash": passwordHash,
        "salt": salt,
        "version": version,
        "emailVerified": emailVerified,
        "passwordUpdatedAt": passwordUpdatedAt,
        "providerUserInfo": providerUserInfo == null ? [] : List<dynamic>.from(providerUserInfo!.map((x) => x.toMap())),
        "validSince": validSince,
        "disabled": disabled,
        "lastLoginAt": lastLoginAt,
        "createdAt": createdAt,
        "screenName": screenName,
        "customAuth": customAuth,
        "rawPassword": rawPassword,
        "phoneNumber": phoneNumber,
        "customAttributes": customAttributes,
        "emailLinkSignin": emailLinkSignin,
        "tenantId": tenantId,
        "mfaInfo": mfaInfo == null ? [] : List<dynamic>.from(mfaInfo!.map((x) => x.toMap())),
        "initialEmail": initialEmail,
        "lastRefreshAt": lastRefreshAt,
    };
}

UserInfo userInfoFromMap(String str) => UserInfo.fromMap(json.decode(str));

String userInfoToMap(UserInfo data) => json.encode(data.toMap());