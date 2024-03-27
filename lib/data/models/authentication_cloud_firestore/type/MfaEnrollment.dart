import 'dart:convert';
import 'package:volunteersapp/data/models/authentication_cloud_firestore/type/EmailInfo.dart';
import 'package:volunteersapp/data/models/authentication_cloud_firestore/type/TotpInfo.dart';

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
            totpInfo: totpInfo != null ? TotpInfo.fromJson(totpInfo as Map<String, dynamic>) : this.totpInfo,
            emailInfo: emailInfo ?? this.emailInfo,
            unobfuscatedPhoneInfo: unobfuscatedPhoneInfo ?? this.unobfuscatedPhoneInfo,
        );

    factory MfaEnrollment.fromJson(Map<String, dynamic> json) => MfaEnrollment(
        mfaEnrollmentId: json["mfaEnrollmentId"],
        displayName: json["displayName"],
        enrolledAt: json["enrolledAt"],
        phoneInfo: json["phoneInfo"],
        totpInfo: json["totpInfo"] == null ? null : TotpInfo.fromJson(json["totpInfo"]),
        emailInfo: json["emailInfo"] == null ? null : EmailInfo.fromJson(json["emailInfo"]),
        unobfuscatedPhoneInfo: json["unobfuscatedPhoneInfo"],
    );

    Map<String, dynamic> toJson() => {
        "mfaEnrollmentId": mfaEnrollmentId,
        "displayName": displayName,
        "enrolledAt": enrolledAt,
        "phoneInfo": phoneInfo,
        "totpInfo": totpInfo?.toJson(),
        "emailInfo": emailInfo?.toJson(),
        "unobfuscatedPhoneInfo": unobfuscatedPhoneInfo,
    };
}

MfaEnrollment mfaEnrollmentFromMap(String str) => MfaEnrollment.fromJson(json.decode(str));

String mfaEnrollmentToMap(MfaEnrollment data) => json.encode(data.toJson());