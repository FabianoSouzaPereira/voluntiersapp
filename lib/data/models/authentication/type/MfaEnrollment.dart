import 'dart:convert';

import 'package:volunteersapp/data/models/authentication/auth_SignIn_With_Password_Model/response/signin_with_password_Model.dart';

class MfaEnrollment {
    final String? mfaEnrollmentId;
    final String? displayName;
    final String? enrolledAt;
    final String? phoneInfo;
    final TotpInfo? totpInfo;
    final EmailInfo? emailInfo;
    final String? unobfuscatedPhoneInfo;

    MfaEnrollment({
        this.mfaEnrollmentId,
        this.displayName,
        this.enrolledAt,
        this.phoneInfo,
        this.totpInfo,
        this.emailInfo,
        this.unobfuscatedPhoneInfo,
    });

    MfaEnrollment copyWith({
        String? mfaEnrollmentId,
        String? displayName,
        String? enrolledAt,
        String? phoneInfo,
        EmailInfo? totpInfo,
        EmailInfo? emailInfo,
        String? unobfuscatedPhoneInfo,
    }) => 
        MfaEnrollment(
            mfaEnrollmentId: mfaEnrollmentId ?? this.mfaEnrollmentId,
            displayName: displayName ?? this.displayName,
            enrolledAt: enrolledAt ?? this.enrolledAt,
            phoneInfo: phoneInfo ?? this.phoneInfo,
            totpInfo: totpInfo != null ? TotpInfo.fromMap(totpInfo as Map<String, dynamic>) : this.totpInfo,
            emailInfo: emailInfo ?? this.emailInfo,
            unobfuscatedPhoneInfo: unobfuscatedPhoneInfo ?? this.unobfuscatedPhoneInfo,
        );

    factory MfaEnrollment.fromMap(Map<String, dynamic> json) => MfaEnrollment(
        mfaEnrollmentId: json["mfaEnrollmentId"],
        displayName: json["displayName"],
        enrolledAt: json["enrolledAt"],
        phoneInfo: json["phoneInfo"],
        totpInfo: json["totpInfo"] == null ? null : TotpInfo.fromMap(json["totpInfo"]),
        emailInfo: json["emailInfo"] == null ? null : EmailInfo.fromMap(json["emailInfo"]),
        unobfuscatedPhoneInfo: json["unobfuscatedPhoneInfo"],
    );

    Map<String, dynamic> toMap() => {
        "mfaEnrollmentId": mfaEnrollmentId,
        "displayName": displayName,
        "enrolledAt": enrolledAt,
        "phoneInfo": phoneInfo,
        "totpInfo": totpInfo?.toMap(),
        "emailInfo": emailInfo?.toMap(),
        "unobfuscatedPhoneInfo": unobfuscatedPhoneInfo,
    };
}

MfaEnrollment mfaEnrollmentFromMap(String str) => MfaEnrollment.fromMap(json.decode(str));

String mfaEnrollmentToMap(MfaEnrollment data) => json.encode(data.toMap());