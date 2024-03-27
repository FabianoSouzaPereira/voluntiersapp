import 'package:volunteersapp/data/models/authentication_cloud_firestore/type/MfaInfo.dart';
import 'package:volunteersapp/data/models/authentication_cloud_firestore/type/ProviderUserInfo.dart';

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

    factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
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
        providerUserInfo: json["providerUserInfo"] == null ? [] : List<ProviderUserInfo>.from(json["providerUserInfo"].map((x) => ProviderUserInfo.fromJson(x))),
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
        mfaInfo: json["mfaInfo"] == null ? [] : List<MfaInfo>.from(json["mfaInfo"].map((x) => MfaInfo.fromJson(x))),
        initialEmail: json["initialEmail"],
        lastRefreshAt: json["lastRefreshAt"],
    );

    Map<String, dynamic> toJson() => {
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
        "providerUserInfo": providerUserInfo == null ? [] : List<dynamic>.from(providerUserInfo!.map((x) => x.toJson())),
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
        "mfaInfo": mfaInfo == null ? [] : List<dynamic>.from(mfaInfo!.map((x) => x.toJson())),
        "initialEmail": initialEmail,
        "lastRefreshAt": lastRefreshAt,
    };
}
