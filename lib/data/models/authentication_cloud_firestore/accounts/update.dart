// To parse this JSON data, do
//
//     final update = updateFromJson(jsonString);

import 'dart:convert';

Update updateFromJson(String str) => Update.fromJson(json.decode(str));

String updateToJson(Update data) => json.encode(data.toJson());

class Update {
    final String? idToken;
    final String? localId;
    final String? displayName;
    final String? email;
    final String? password;
    final List<String>? provider;
    final String? oobCode;
    final String? emailVerified;
    final bool? upgradeToFederatedLogin;
    final String? captchaChallenge;
    final String? captchaResponse;
    final String? validSince;
    final bool? disableUser;
    final String? instanceId;
    final String? delegatedProjectNumber;
    final String? photoUrl;
    final List<DeleteAttribute>? deleteAttribute;
    final bool? returnSecureToken;
    final List<String>? deleteProvider;
    final String? lastLoginAt;
    final String? createdAt;
    final String? phoneNumber;
    final String? customAttributes;
    final String? tenantId;
    final String? targetProjectId;
    final Mfa? mfa;
    final LinkProviderUserInfo? linkProviderUserInfo;

    Update({
        this.idToken,
        this.localId,
        this.displayName,
        this.email,
        this.password,
        this.provider,
        this.oobCode,
        this.emailVerified,
        this.upgradeToFederatedLogin,
        this.captchaChallenge,
        this.captchaResponse,
        this.validSince,
        this.disableUser,
        this.instanceId,
        this.delegatedProjectNumber,
        this.photoUrl,
        this.deleteAttribute,
        this.returnSecureToken,
        this.deleteProvider,
        this.lastLoginAt,
        this.createdAt,
        this.phoneNumber,
        this.customAttributes,
        this.tenantId,
        this.targetProjectId,
        this.mfa,
        this.linkProviderUserInfo,
    });

    Update copyWith({
        String? idToken,
        String? localId,
        String? displayName,
        String? email,
        String? password,
        List<String>? provider,
        String? oobCode,
        String? emailVerified,
        bool? upgradeToFederatedLogin,
        String? captchaChallenge,
        String? captchaResponse,
        String? validSince,
        bool? disableUser,
        String? instanceId,
        String? delegatedProjectNumber,
        String? photoUrl,
        List<DeleteAttribute>? deleteAttribute,
        bool? returnSecureToken,
        List<String>? deleteProvider,
        String? lastLoginAt,
        String? createdAt,
        String? phoneNumber,
        String? customAttributes,
        String? tenantId,
        String? targetProjectId,
        Mfa? mfa,
        LinkProviderUserInfo? linkProviderUserInfo,
    }) => 
        Update(
            idToken: idToken ?? this.idToken,
            localId: localId ?? this.localId,
            displayName: displayName ?? this.displayName,
            email: email ?? this.email,
            password: password ?? this.password,
            provider: provider ?? this.provider,
            oobCode: oobCode ?? this.oobCode,
            emailVerified: emailVerified ?? this.emailVerified,
            upgradeToFederatedLogin: upgradeToFederatedLogin ?? this.upgradeToFederatedLogin,
            captchaChallenge: captchaChallenge ?? this.captchaChallenge,
            captchaResponse: captchaResponse ?? this.captchaResponse,
            validSince: validSince ?? this.validSince,
            disableUser: disableUser ?? this.disableUser,
            instanceId: instanceId ?? this.instanceId,
            delegatedProjectNumber: delegatedProjectNumber ?? this.delegatedProjectNumber,
            photoUrl: photoUrl ?? this.photoUrl,
            deleteAttribute: deleteAttribute ?? this.deleteAttribute,
            returnSecureToken: returnSecureToken ?? this.returnSecureToken,
            deleteProvider: deleteProvider ?? this.deleteProvider,
            lastLoginAt: lastLoginAt ?? this.lastLoginAt,
            createdAt: createdAt ?? this.createdAt,
            phoneNumber: phoneNumber ?? this.phoneNumber,
            customAttributes: customAttributes ?? this.customAttributes,
            tenantId: tenantId ?? this.tenantId,
            targetProjectId: targetProjectId ?? this.targetProjectId,
            mfa: mfa ?? this.mfa,
            linkProviderUserInfo: linkProviderUserInfo ?? this.linkProviderUserInfo,
        );

    factory Update.fromJson(Map<String, dynamic> json) => Update(
        idToken: json["idToken"],
        localId: json["localId"],
        displayName: json["displayName"],
        email: json["email"],
        password: json["password"],
        provider: json["provider"] == null ? [] : List<String>.from(json["provider"]!.map((x) => x)),
        oobCode: json["oobCode"],
        emailVerified: json["emailVerified"],
        upgradeToFederatedLogin: json["upgradeToFederatedLogin"],
        captchaChallenge: json["captchaChallenge"],
        captchaResponse: json["captchaResponse"],
        validSince: json["validSince"],
        disableUser: json["disableUser"],
        instanceId: json["instanceId"],
        delegatedProjectNumber: json["delegatedProjectNumber"],
        photoUrl: json["photoUrl"],
        deleteAttribute: json["deleteAttribute"] == null ? [] : List<DeleteAttribute>.from(json["deleteAttribute"]!.map((x) => DeleteAttribute.fromJson(x))),
        returnSecureToken: json["returnSecureToken"],
        deleteProvider: json["deleteProvider"] == null ? [] : List<String>.from(json["deleteProvider"]!.map((x) => x)),
        lastLoginAt: json["lastLoginAt"],
        createdAt: json["createdAt"],
        phoneNumber: json["phoneNumber"],
        customAttributes: json["customAttributes"],
        tenantId: json["tenantId"],
        targetProjectId: json["targetProjectId"],
        mfa: json["mfa"] == null ? null : Mfa.fromJson(json["mfa"]),
        linkProviderUserInfo: json["linkProviderUserInfo"] == null ? null : LinkProviderUserInfo.fromJson(json["linkProviderUserInfo"]),
    );

    Map<String, dynamic> toJson() => {
        "idToken": idToken,
        "localId": localId,
        "displayName": displayName,
        "email": email,
        "password": password,
        "provider": provider == null ? [] : List<dynamic>.from(provider!.map((x) => x)),
        "oobCode": oobCode,
        "emailVerified": emailVerified,
        "upgradeToFederatedLogin": upgradeToFederatedLogin,
        "captchaChallenge": captchaChallenge,
        "captchaResponse": captchaResponse,
        "validSince": validSince,
        "disableUser": disableUser,
        "instanceId": instanceId,
        "delegatedProjectNumber": delegatedProjectNumber,
        "photoUrl": photoUrl,
        "deleteAttribute": deleteAttribute == null ? [] : List<dynamic>.from(deleteAttribute!.map((x) => x.toJson())),
        "returnSecureToken": returnSecureToken,
        "deleteProvider": deleteProvider == null ? [] : List<dynamic>.from(deleteProvider!.map((x) => x)),
        "lastLoginAt": lastLoginAt,
        "createdAt": createdAt,
        "phoneNumber": phoneNumber,
        "customAttributes": customAttributes,
        "tenantId": tenantId,
        "targetProjectId": targetProjectId,
        "mfa": mfa?.toJson(),
        "linkProviderUserInfo": linkProviderUserInfo?.toJson(),
    };
}

class DeleteAttribute {
    final String? userAttributeName;

    DeleteAttribute({
        this.userAttributeName,
    });

    DeleteAttribute copyWith({
        String? userAttributeName,
    }) => 
        DeleteAttribute(
            userAttributeName: userAttributeName ?? this.userAttributeName,
        );

    factory DeleteAttribute.fromJson(Map<String, dynamic> json) => DeleteAttribute(
        userAttributeName: json["userAttributeName"],
    );

    Map<String, dynamic> toJson() => {
        "userAttributeName": userAttributeName,
    };
}

class LinkProviderUserInfo {
    final String? providerUserInfo;

    LinkProviderUserInfo({
        this.providerUserInfo,
    });

    LinkProviderUserInfo copyWith({
        String? providerUserInfo,
    }) => 
        LinkProviderUserInfo(
            providerUserInfo: providerUserInfo ?? this.providerUserInfo,
        );

    factory LinkProviderUserInfo.fromJson(Map<String, dynamic> json) => LinkProviderUserInfo(
        providerUserInfo: json["providerUserInfo"],
    );

    Map<String, dynamic> toJson() => {
        "providerUserInfo": providerUserInfo,
    };
}

class Mfa {
    final String? mfaInfo;

    Mfa({
        this.mfaInfo,
    });

    Mfa copyWith({
        String? mfaInfo,
    }) => 
        Mfa(
            mfaInfo: mfaInfo ?? this.mfaInfo,
        );

    factory Mfa.fromJson(Map<String, dynamic> json) => Mfa(
        mfaInfo: json["mfaInfo"],
    );

    Map<String, dynamic> toJson() => {
        "mfaInfo": mfaInfo,
    };
}
